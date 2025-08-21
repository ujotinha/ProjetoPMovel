import 'package:projetointheirskin/pages/pacientes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPlanoTratamento extends StatefulWidget {
  //Propriedade propriedade;

  CardPlanoTratamento({
    //required this.propriedade,
    super.key,
  });

  @override
  State<CardPlanoTratamento> createState() => _CardPlanoTratamentoState();
}

class _CardPlanoTratamentoState extends State<CardPlanoTratamento> {
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
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Diagnóstico detalhado:",
                              style: TextStyle(
                                  color: Color(0xFF7b4a28), fontSize: 10)),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(7),
                          height: 28,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Medicamentos",
                                  style: TextStyle(
                                      color: Color(0xFF7b4a28), fontSize: 10)),
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.all(7),
                          height: 28,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Terapia",
                                  style: TextStyle(
                                      color: Color(0xFF7b4a28), fontSize: 10)),
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.all(7),
                          height: 28,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Quimioterapia",
                                  style: TextStyle(
                                      color: Color(0xFF7b4a28), fontSize: 10)),
                            ],
                          )),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
