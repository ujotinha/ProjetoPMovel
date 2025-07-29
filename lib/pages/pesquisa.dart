import 'package:flutter/material.dart';

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          body: buildBody(),
          appBar: buildAppBar(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: Color(0xFFc77b44),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(fontSize: 10),
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Autocuidado"),
              BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Pesquisa'),
              BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Pacientes'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Personagem')
            ],
          ),
        )
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFe0d4bd),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      centerTitle: false,
      title: Image.asset("assets/logo.png", height: 40, width: 70),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle),
          color: Color(0xFFc77b44),
        )
      ],
    );
  }

  buildBody(){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
