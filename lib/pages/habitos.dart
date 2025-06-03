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
        padding: EdgeInsets.all(50),
        color: Color(0xFFf0e6d4),
        width: double.infinity,
        height: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xFFdfceb4),
              width: 300,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Color(0xFFca876d),
              width: 180,
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color(0xFFca876d),
              width: 180,
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color(0xFFca876d),
              width: 180,
              height: 30,
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







