import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Habitos extends StatefulWidget {
  const Habitos({super.key});

  @override
  State<Habitos> createState() => _HabitosState();
}

class _HabitosState extends State<Habitos> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: buildBody(),
          bottomNavigationBar: buildBottomNavigationBar(),
        ),
    );
  }
  buildAppBar(){
    return AppBar(
      actions: [
        Icon(
            Icons.account_circle,
            color: Color (0xFFc77b44),
        ),
      ],
      backgroundColor: Color(0xFFe0d4bd),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
          bottomRight: Radius.circular(90.0),
        ),
      ),
    );
  }

  buildBody(){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: 650,
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 20,
              decoration: BoxDecoration(color: Color(0xFFca876d), borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.paid, color: Colors.white),
                  Text("0,00 | Nível 1", style: TextStyle( color: Colors.white )),
                ],
              ),
            ),
            ],
            ),
            SizedBox(
              height: 20,
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
                      Text("Ana", style: TextStyle( color: Colors.white )),

                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(color: Color(0xFFca876d),borderRadius: BorderRadius.circular(10)),
              child: Row(
              children: [
                Icon(Icons.assignment, color: Colors.white),
                Text("Missão Diária", style: TextStyle( color: Colors.white )),
              ],
            ),

            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(color: Color(0xFFca876d),borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart, color: Colors.white),
                  Text("Visite a lojinha", style: TextStyle( color: Colors.white )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(color: Color(0xFFca876d),borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(Icons.medication, color: Colors.white),
                  Text("Medicamentos", style: TextStyle( color: Colors.white )),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }

  buildBottomNavigationBar(){
    return  BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
          print(selectedIndex);
        });
      },
      backgroundColor: Color (0xFFc77b44),
      unselectedItemColor: Color(0xFF6C6C6C),
      selectedItemColor: Color(0xFFffffff),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.favorite),
          label: ' ',
        ),
        BottomNavigationBarItem(
            icon:Icon(Icons.menu_book),
          label: ' '
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.groups),
          label: ' '
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.person),
          label: ' Personagem '
        ),
      ],
    );
  }
}







