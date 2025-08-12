import 'package:flutter/material.dart';

class bodyPesquisa extends StatefulWidget {
  const bodyPesquisa({super.key});

  @override
  State<bodyPesquisa> createState() => _bodyPesquisaState();
}

class _bodyPesquisaState extends State<bodyPesquisa> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),

      ),
    );;
  }
}
