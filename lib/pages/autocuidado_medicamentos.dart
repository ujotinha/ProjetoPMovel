import'package:flutter/material.dart';
import 'package:projetointheirskin/api/clima_api.dart';
import 'package:projetointheirskin/api/remedio_api.dart';
import 'package:projetointheirskin/domain/infoMedicamentos.dart';
import 'package:projetointheirskin/widgets/CardMedicamento.dart';
import '../db/medicamento_dao.dart';
import '../domain/infoClima.dart';

class AutocuidadoMedicamentos extends StatefulWidget {
  const AutocuidadoMedicamentos({super.key});

  @override
  State<AutocuidadoMedicamentos> createState() =>
      _AutocuidadoMedicamentosState();
}

class _AutocuidadoMedicamentosState extends State<AutocuidadoMedicamentos> {

  //List listaMedicamentos = [];
  
  late Future<List<Medicamento>> futurelistaMedicamentos;
  late Future<InfoClima> futureclima;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    futurelistaMedicamentos = MedicamentoApi().findAll();
    futureclima = ClimaApi().getInfoClima();
    //setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          body: buildBody(),
          floatingActionButton: buildFloatingActionButton()),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFe0d4bd),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      title: Image.asset("assets/logo.png", height: 50, width: 80),
    );
  }

  buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(10)),
        height: double.infinity,
        width: double.infinity,

        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_left),
                  color: Color(0xFFc77b44),
                  iconSize: 30,
                ),
                Text("Medicamentos",
                    style: TextStyle(color: Color(0xFFa5591f), fontSize: 18)),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FutureBuilder<List<Medicamento>>(
                      future: futurelistaMedicamentos,
                      builder:(context,snapshot){
                        if(snapshot.hasData){
                          List<Medicamento> lista = snapshot.requireData;
                          return buildListView(lista);
                        }
                        return Center(child: CircularProgressIndicator(color: Color(0xFFa5591f),));
                      },
                    ),
                    SizedBox(
                      child: FutureBuilder<InfoClima>(
                          future: futureclima,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              InfoClima clima = snapshot.requireData;
                              return buildClimaContainer(clima);
                            }
                            return Container();
                          }
                          ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildClimaContainer(InfoClima infoclima) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFe0d4bd),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            infoclima.cidade,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFa5591f),
            ),
          ),
          SizedBox(height: 8),
          Text(
            '${infoclima.temperatura.toStringAsFixed(0)}°C',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w300,
              color: Color(0xFFa5591f),
            ),
          ),
          Text(
            infoclima.condicao,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFFc77b44),
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildClimaDetalhes('Sensação', '${infoclima.sensacao.toStringAsFixed(0)}°C'),
              buildClimaDetalhes('Umidade', '${infoclima.umidade}%'),
              buildClimaDetalhes('Índice UV', '${infoclima.indiceUv}'),
            ],
          ),
        ],
      ),
    );
  }

  buildClimaDetalhes(String nome, String valor) {
    return Column(
      children: [
        Text(
          nome,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFFa5591f),
          ),
        ),
        SizedBox(height: 4),
        Text(
          valor,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFFa5591f),
          ),
        ),
      ],
    );
  }

  buildListView(List<Medicamento> listaMedicamentos){
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: listaMedicamentos.length,
        itemBuilder: (context,i){
          return CardMedicamento(
              medicamento: listaMedicamentos[i]
          );
        }
    );
  }

  buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Color(0xFFa5591f),
      onPressed: () {
      },
      shape: CircleBorder(),
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
