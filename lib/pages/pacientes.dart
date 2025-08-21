import 'package:flutter/material.dart';
import 'package:projetointheirskin/widgets/CardBotaoCuidarPaciente.dart';
import 'package:projetointheirskin/widgets/CardInformacoesPaciente.dart';
import 'package:projetointheirskin/widgets/CardPlanoTratamento.dart';

class Pacientes extends StatefulWidget {
  const Pacientes({super.key});

  @override
  State<Pacientes> createState() => _PacientesState();
}

class _PacientesState extends State<Pacientes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
        child: ListView(
          children: [
            CardInformacoesPaciente(),
            SizedBox(
              height: 25,
            ),
            CardPlanoTratamento(),
            SizedBox(
              height: 50,
            ),
            Center(
              child: CardBotaoCuidarPaciente(),
            ),
          ],
        ),
      ),
    );
  }
}
