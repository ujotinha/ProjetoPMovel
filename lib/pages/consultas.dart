import 'package:flutter/material.dart';
import 'package:projetointheirskin/db/consulta_dao.dart';
import 'package:projetointheirskin/widgets/CardConsulta.dart';

class consultas extends StatefulWidget {
  const consultas({super.key});

  @override
  State<consultas> createState() => _consultasState();
}

class _consultasState extends State<consultas> {

  List listaconsultas = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaconsultas = await ConsultaDao().listarconsulta();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
                  IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(0xFFc77b44),
                    iconSize: 20,),
                  Text("Consultas",
                      style: TextStyle(fontSize: 20, color: Color(0xFFc77b44))),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listaconsultas.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        CardConsulta(consulta: listaconsultas[i]),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


