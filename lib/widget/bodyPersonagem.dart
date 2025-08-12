import 'package:flutter/material.dart';

class bodyPersonagem extends StatefulWidget {
  const bodyPersonagem({super.key});

  @override
  State<bodyPersonagem> createState() => _bodyPersonagemState();
}

class _bodyPersonagemState extends State<bodyPersonagem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: 700,
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 20,
              decoration: BoxDecoration(color: Color(0xFFca876d), borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.paid, color: Color (0xFFffe3d7), size: 15,),
                  Text("0,00 | Nível 1", style: TextStyle( color: Color (0xFFffe3d7))),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(color: Color(0xFFca876d), borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ana", style: TextStyle( color: Color (0xFFffe3d7))),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/perfil2.png"),
                        radius: 70,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 180,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                backgroundColor: Color(0xFFca876d),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            child: Row(
                              children: [
                                Text("Personalize o seu Avatar", style: TextStyle( color: Color (0xFFffe3d7) )),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                      Icon(Icons.assignment, color: Color (0xFFffe3d7), size: 25),
                      Text("Missão Diária", style: TextStyle( color: Color (0xFFffe3d7) )),
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
                      Icon(Icons.shopping_cart,color: Color (0xFFffe3d7), size: 25),
                      Text("Visite a lojinha", style: TextStyle( color: Color (0xFFffe3d7) )),
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
                      Icon(Icons.medication, color: Color (0xFFffe3d7), size: 25),
                      Text("Medicamentos", style: TextStyle( color: Color (0xFFffe3d7) )),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),

    );
  }
}
