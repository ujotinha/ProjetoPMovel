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
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),

        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child:
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: CircleAvatar(
                          child: ClipOval(
                            child: Image(image: AssetImage("assets/fotoPessoa.png")),
                          ),
                        ),
                      ),

                    ),
                    SizedBox(width: 10,),
                    Column(
                        children: [
                          Text("José Rodrigues Silva", style: TextStyle( color: Color(0xFF846446) )),
                              Container(
                                height: 20,
                                width: 175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFdfceb4),
                                  ),
                                child:
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Portador de Câncer de Pulmão", style: TextStyle( color: Color (0xFF7b4a28), fontSize:10)),
                                      ],
                                    )

                              )


                        ]
                    )
                  ]

                )

              ],
            ),

                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          backgroundColor: Color(0xFFdfceb4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.monitor_heart, color: Color (0xFF7b4a28), size: 20),
                              Text("Informações do paciente", style: TextStyle( color: Color (0xFF7b4a28), fontSize: 12)),
                            ],
                          ),
                          Container(
                              height: 21,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nome completo:", style: TextStyle( color: Color (0xFF7b4a28), fontSize:10)),
                                ],
                              )

                          )
                        ],
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          backgroundColor: Color(0xFFca876d),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)
                          )
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.medical_information,color: Color (0xFFffe3d7), size: 25),
                          Text("Visite a lojinha", style: TextStyle( color: Color (0xFFffe3d7) )),
                        ],
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
        ),
    );
  }
}
