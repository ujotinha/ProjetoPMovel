import 'package:flutter/material.dart';
import 'package:projetointheirskin/api/consultas_api.dart';
import 'package:projetointheirskin/api/versiculo_api.dart';
import 'package:projetointheirskin/db/consulta_dao.dart';
import 'package:projetointheirskin/domain/Consulta.dart';
import 'package:projetointheirskin/domain/Versiculo.dart';
import 'package:projetointheirskin/widgets/CardConsulta.dart';

class consultas extends StatefulWidget {
  const consultas({super.key});

  @override
  State<consultas> createState() => _consultasState();
}

class _consultasState extends State<consultas> {
  //List listaconsultas = [];
  late Future<List<Consulta>> futureListaconsultas;
  late Future<Versiculo> versiculoAleatorio;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    futureListaconsultas = ConsultaApi().findAll();
    versiculoAleatorio = VersiculoApi().findRandomVerse();
    //setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
        floatingActionButton: buildFloatingActionButton(),
        backgroundColor: Color(0xFFe7ddc9),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(0xFFc77b44),
                    iconSize: 20,
                  ),
                  Text("Consultas",
                      style: TextStyle(fontSize: 20, color: Color(0xFFc77b44))),
                ],
              ),
              SizedBox(height: 10),
              FutureBuilder<Versiculo>(
                  future: versiculoAleatorio,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Versiculo versiculo = snapshot.requireData;
                      return Card(
                        color: Color(0xFFE0D4BD),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text("${versiculo.livro} ${versiculo.capitulo}:${versiculo.numero_versiculo} ${versiculo.texto}", style: TextStyle(color: Color( 0XFF7b4a28), fontSize: 13)),
                                  Icon(Icons.favorite, color: Color(0xffcc1d1d),
                                    size: 25, ),
                          ]
                              )
                            ],
                          ),
                        ),
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  }),
              SizedBox(height: 10),
              Expanded(
                child: FutureBuilder<List<Consulta>>(
                    future: futureListaconsultas,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Consulta> lista = snapshot.requireData;
                        return buildListView(lista);
                      }
                      return Center(child: CircularProgressIndicator());
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

buildListView(List<Consulta> listconsultas) {
  return ListView.builder(
    itemCount: listconsultas.length,
    itemBuilder: (context, i) {
      return CardConsulta(consulta: listconsultas[i]);
    },
  );
}

buildFloatingActionButton() {
  return FloatingActionButton(
    backgroundColor: Color(0xFFa5591f),
    onPressed: () {},
    shape: CircleBorder(),
    child: Icon(
      Icons.add,
      color: Colors.white,
    ),
  );
}
