import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/infoMedicamentos.dart';

class CardMedicamento extends StatefulWidget {
  Medicamento medicamento;

  CardMedicamento({
    required this.medicamento,
    super.key,
  });

  @override
  State<CardMedicamento> createState() => _CardMedicamentoState();
}

class _CardMedicamentoState extends State<CardMedicamento> {
  Medicamento get medicamento => widget.medicamento;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(color: Color(0xFFe0d4bd), borderRadius: BorderRadius.circular(18)),
          height: 98,
          width: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(medicamento.nome_medicamento, style: TextStyle(color: Color(0xFF7b4a28))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(medicamento.horario_medicamento, style: TextStyle(fontSize: 20, color: Color(0xFF7b4a28)),),
                  Row(
                    children: [
                      Text(medicamento.data_medicamento, style: TextStyle(fontSize: 10, color: Color(0xFF7b4a28)),),
                      IconButton( icon:  Icon(Icons.toggle_on), color: Color(0xFFa5591f), iconSize: 32, onPressed: () { },),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
