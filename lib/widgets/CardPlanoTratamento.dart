import 'package:projetointheirskin/domain/PlanoTratamento.dart';
import 'package:projetointheirskin/pages/pacientes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPlanoTratamento extends StatefulWidget {
  PlanoTratamento planoTratamento;

  CardPlanoTratamento({
    required this.planoTratamento,
    super.key,
  });

  @override
  State<CardPlanoTratamento> createState() =>
      _CardPlanoTratamentoState();
}

class _CardPlanoTratamentoState extends State<CardPlanoTratamento> {
  PlanoTratamento get planoTratamento => widget.planoTratamento;
  late String diagnostico;

  @override
  void initState() {
    super.initState();
    diagnostico = widget.planoTratamento.Diagnostico;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFdfceb4),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    children: [
                      Icon(Icons.monitor_heart,
                          color: Color(0xFF7b4a28), size: 20),
                      Text("Planos de Tratamento",
                          style: TextStyle(
                              color: Color(0xFF7b4a28), fontSize: 12)),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(7),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Diagnóstico detalhado: \n$diagnostico",
                              style: TextStyle(
                                  color: Color(0xFF7b4a28), fontSize: 10, ), textAlign: TextAlign.justify,),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 28,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(2),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Medicamentos",
                                    style: TextStyle(color: Color(0xFF7b4a28), fontSize: 10)),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 100,
                        height: 28,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(2),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Terapia",
                                    style: TextStyle(color: Color(0xFF7b4a28), fontSize: 10)),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 100,
                        height: 28,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(2),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Quimioterapia",
                                    style: TextStyle(color: Color(0xFF7b4a28), fontSize: 10)),
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
