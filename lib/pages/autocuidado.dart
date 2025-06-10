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

  buildBody() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
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
                          icon: Icon(
                            Icons.sentiment_very_satisfied,
                            color: Color(0xFFa98765),
                          ),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sentiment_satisfied_alt_outlined,
                            color: Color(0xFFa98765),
                          ),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sentiment_neutral,
                            color: Color(0xFFa98765),
                          ),
                          iconSize: 20),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sentiment_dissatisfied_outlined,
                            color: Color(0xFFa98765),
                          ),
                          iconSize: 20),
                      IconButton(
                        onPressed: () {},
                        // icon: Icon( color: Color(0xFFa98765)),
                        icon: Icon(
                          Icons.sentiment_neutral_outlined,
                          color: Color(0xFFa98765),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        // botão Meu Humor
                        height: 80,
                        width: 155,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFdfceb4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            child: Column(
                              children: [
                                Text("Meu Humor",
                                    style: TextStyle(color: Color(0xFFa5591f))),
                                Text(
                                  "Acompanhe como você se sentiu ao longo do mês. Um registro visual do seu emocional.",
                                  style: TextStyle(
                                      fontSize: 9, color: Color(0xFFa5591f)),
                                )
                              ],
                            )),
                      ), //
                      SizedBox(
                        // botão Meus Habitos
                        height: 80,
                        width: 155,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFdfceb4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            child: Column(
                              children: [
                                Text("Meus Hábitos",
                                    style: TextStyle(color: Color(0xFFa5591f))),
                                Text(
                                  "Cuide de você no seu ritmo: hábitos diários, lembretes e medicamentos",
                                  style: TextStyle(
                                      fontSize: 9, color: Color(0xFFa5591f)),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        // botão meu diário
                        height: 80,
                        width: 155,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFdfceb4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            child: Column(
                              children: [
                                Text(
                                  "Meu Diário",
                                  style: TextStyle(color: Color(0xFFa5591f)),
                                ),
                                Text(
                                  "Um cantinho só seu para escrever, refletir e se escutar com calma.",
                                  style: TextStyle(
                                      fontSize: 9, color: Color(0xFFa5591f)),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        // botão Amigo Virtual
                        height: 80,
                        width: 155,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFdfceb4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            child: Column(
                              children: [
                                Text(
                                  "Amigo Virtual",
                                  style: TextStyle(color: Color(0xFFa5591f)),
                                ),
                                Text(
                                  "Seu companheiro digital pra te acolher e caminhar com você.",
                                  style: TextStyle(
                                      fontSize: 9, color: Color(0xFFa5591f)),
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
