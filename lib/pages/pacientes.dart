import 'package:flutter/material.dart';

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
        height: 700,
        decoration: BoxDecoration(
            color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
        child: ListView(
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
                            child: Image(
                                image: AssetImage("assets/fotoPessoa.png")),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text("José Rodrigues Silva",
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
                            Text("Nome completo:",
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
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Data de Nascimento:",
                                    style: TextStyle(
                                        color: Color(0xFF7b4a28),
                                        fontSize: 10)),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.all(7),
                            height: 28,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CPF:",
                                    style: TextStyle(
                                        color: Color(0xFF7b4a28),
                                        fontSize: 10)),
                              ],
                            )),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
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
                                        color: Color(0xFF7b4a28),
                                        fontSize: 10)),
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
                                        color: Color(0xFF7b4a28),
                                        fontSize: 10)),
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
                                        color: Color(0xFF7b4a28),
                                        fontSize: 10)),
                              ],
                            )),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Center(
              child:
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
            ),

          ],
        ),
      ),
    );
  }
}
