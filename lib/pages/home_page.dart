import 'package:flutter/material.dart';
import 'package:projetointheirskin/pages/autocuidado_medicamento.dart';
import 'package:projetointheirskin/pages/pagina_inicial.dart';
import 'package:projetointheirskin/pages/personagem.dart';
import 'package:projetointheirskin/pages/pesquisa.dart';
import 'package:projetointheirskin/pages/pacientes.dart';
import 'package:projetointheirskin/pages/meu_diario.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  var pages = [
    PaginaInicial(),
    Pesquisa(),
    Pacientes(),
    Personagem(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: pages[selectedIndex],
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Autocuidado"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book), label: 'Pesquisa'),
              BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Pacientes'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Personagem')
            ],
          ),
        ));
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
}
