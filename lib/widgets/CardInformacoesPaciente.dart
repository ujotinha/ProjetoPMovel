import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/InformacoesPaciente.dart';

class CardInformacoesPaciente extends StatefulWidget {
  InfoPaciente infoPaciente;

  CardInformacoesPaciente({
    required this.infoPaciente,
    super.key,
  });

  @override
  State<CardInformacoesPaciente> createState() =>
      _CardInformacoesPacienteState();
}

class _CardInformacoesPacienteState extends State<CardInformacoesPaciente> {
  InfoPaciente get infoPaciente => widget.infoPaciente;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: CircleAvatar(
                        child: ClipOval(
                          child:
                              Image(image: AssetImage("assets/fotoPessoa.png")),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(infoPaciente.nome_Paciente,
                          style: TextStyle(color: Color(0xFF846446))),
                      Container(
                        height: 20,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFdfceb4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Portador de Câncer de Pulmão",
                                style: TextStyle(
                                    color: Color(0xFF7b4a28), fontSize: 10)),
                          ],
                        ),
                      ),
                      SizedBox(height: 6,),
                      Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFdfceb4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("17 anos",
                                style: TextStyle(
                                    color: Color(0xFF7b4a28), fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
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
                      Icon(Icons.medical_information,
                          color: Color(0xFF7b4a28), size: 20),
                      Text("Informações do paciente",
                          style: TextStyle(
                              color: Color(0xFF7b4a28), fontSize: 12)),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(7),
                      height: 28,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nome completo: ${infoPaciente.nome_Paciente}",
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
                          width: 176,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Data de Nascimento: ${infoPaciente.Data_Nascimento}",
                                  style: TextStyle(
                                      color: Color(0xFF7b4a28), fontSize: 10)),
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.all(7),
                          height: 28,
                          width: 116,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CPF: ${infoPaciente.Cpf}",
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
