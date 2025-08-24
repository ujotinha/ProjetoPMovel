import 'package:flutter/material.dart';
import 'package:projetointheirskin/pages/autocuidado_medicamento.dart';
import 'package:projetointheirskin/pages/meu_diario.dart'; // Importe a página do diário

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
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
                      ),
                      SizedBox(
                        // botão Meus Habitos
                        height: 80,
                        width: 155,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AutocuidadoMedicamentos()),
                              );
                            },
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MeuDiario()),
                              );
                            },
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
