import 'package:flutter/material.dart';

class CardBotaoCuidarPaciente extends StatefulWidget {
  @override
  State<CardBotaoCuidarPaciente> createState() =>
      _CardBotaoCuidarPacienteState();
}

class _CardBotaoCuidarPacienteState extends State<CardBotaoCuidarPaciente> {
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
