import 'package:projetointheirskin/pages/pacientes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBotaoCuidarPaciente extends StatefulWidget {
  //Propriedade propriedade;

  CardBotaoCuidarPaciente({
    //required this.propriedade,
    super.key,
  });

  @override
  State<CardBotaoCuidarPaciente> createState() =>
      _CardBotaoCuidarPacienteState();
}

class _CardBotaoCuidarPacienteState extends State<CardBotaoCuidarPaciente> {
  // String get urlImage => widget.urlImage;
  //Propriedade get propriedade => widget.propriedade;

  // String getUrlImage {
  //   return widget.urlImage;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 40,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color(0xFFca876d),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cuidar deste paciente",
                        style: TextStyle(color: Color(0xFFffe3d7))),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
