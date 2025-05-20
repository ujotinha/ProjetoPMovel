import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: buildStack(),
    ));
  }

  buildStack() {
    return Stack(
      // Widget Stack utilizada para colocar elementos sobrepostos, no caso, a elementos sobrepostos na imagem de fundo.
      children: [
        Image.asset(
          "assets/tela_inicial_fundo.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Container( // Logo-titulo
                  child: Image.asset("assets/logo.png"),
                ),
                Spacer(flex: 3,),

                Container(
                  height: 128,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFdfceb4)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () => {},
                            child: Text("Entrar"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFa5591f),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 4.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () => {},
                            child: Text("Cadastrar"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFa5591f),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 4.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
