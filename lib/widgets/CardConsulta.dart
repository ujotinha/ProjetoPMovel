import 'package:projetointheirskin/domain/Consulta.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/pages/consultas.dart';

class CardConsulta extends StatefulWidget {
 Consulta consulta;

  CardConsulta({
    required this.consulta,
    super.key,
  });

  @override
  State<CardConsulta> createState() => _CardConsultaState();
}

class _CardConsultaState extends State<CardConsulta> {
  // String get urlImage => widget.urlImage;
  Consulta get consulta => widget.consulta;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
          color: Color(0xFFE0D4BD),
          borderRadius: BorderRadius.circular(12)),
      height: 120,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  consulta.especialidade, style: TextStyle(color: Color(
                    0XFF7b4a28), fontSize: 17),),
                Text("  - "),
                SizedBox(width: 5),
                Text(consulta.nomemedico, style: TextStyle(color: Color(
                    0XFF7b4a28), fontSize: 12),),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(consulta.horario, style: TextStyle(color: Color(0XFF7b4a28),
                fontSize: 18,)),

              Row(
                children: [
                  Text(consulta.data,
                      style: TextStyle(color: Color(0XFF7b4a28))),
                  Icon(Icons.toggle_on, color: Color(0xFFa5591f),
                    size: 40,),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}