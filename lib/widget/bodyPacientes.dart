import 'package:flutter/material.dart';

class bodyPacientes extends StatefulWidget {
  const bodyPacientes({super.key});

  @override
  State<bodyPacientes> createState() => _bodyPacientesState();
}

class _bodyPacientesState extends State<bodyPacientes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
