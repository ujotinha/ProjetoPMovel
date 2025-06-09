import 'package:flutter/material.dart';

class Autocuidado extends StatefulWidget {
  const Autocuidado({super.key});

  @override
  State<Autocuidado> createState() => _AutocuidadoState();
}

class _AutocuidadoState extends State<Autocuidado> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFe7ddc9),
      appBar: buildAppBar(),
      body: buildBody(),
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
              icon: Icon(Icons.heart_broken), label: "Autocuidado"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Pesquisa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt), label: 'Pacientes'),
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
          icon: Icon(Icons.person),
          color: Color(0xFFc77b44),
        )
      ],
    );
  }

  buildBody() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 350,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xFFf0e6d4)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFc77b44),
                      borderRadius: BorderRadius.circular(12)),
                  height: 35,
                  child: Text(
                    "Registre seu humor diário",
                    style: TextStyle(color: Color(0xFFdfceb4), fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFdfceb4),
                      borderRadius: BorderRadius.circular(12)),
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          iconSize: 20)
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFdfceb4)),
                          child: Column(
                            children: [
                              Text("Meu Humor"),
                              Text("Acompanhe como você se sentiu ao longo do mês. Um registro visual do seu emocional.")
                            ],
                          )
                      ),

                    ],
                  ),
                  Row()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
