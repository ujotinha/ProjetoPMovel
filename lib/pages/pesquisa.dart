import 'package:flutter/material.dart';
import 'package:projetointheirskin/db/botaoimagem_dao.dart';
import 'package:projetointheirskin/db/botaotexto_dao.dart';
import 'package:projetointheirskin/domain/BotaoImagem.dart';
import 'package:projetointheirskin/widgets/CardBotaoImagem.dart';
import 'package:projetointheirskin/widgets/CardBotaoTexto.dart';

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  List listaBotaoArtigo = [];
  List listaBotaoDicas = [];
  List listaBotaoSobreCancer = [];
  List listaBotaoVideo = [];

  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaBotaoArtigo = await BotaotextoDao().listarBotaoArtigo();
    listaBotaoDicas = await BotaotextoDao().listarBotaoDicas();
    listaBotaoSobreCancer = await BotaotextoDao().listarBotaoSobreCancer();
    listaBotaoVideo = await BotaoimagemDao().listarBotaoImagem();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sobre o Câncer: ",
                      style: TextStyle(color: Color(0xFFa5591f)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listaBotaoSobreCancer.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Cardbotaotexto(botaotexto: listaBotaoSobreCancer[i]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 95,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFa5591f),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Ver mais",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vídeos: ",
                      style: TextStyle(color: Color(0xFFa5591f)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listaBotaoVideo.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Cardbotaoimagem(botaoimagem: listaBotaoVideo[i]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 95,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFa5591f),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Ver mais",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dicas: ",
                      style: TextStyle(color: Color(0xFFa5591f)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listaBotaoDicas.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Cardbotaotexto(botaotexto: listaBotaoDicas[i]),
                          );
                        },
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 95,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFa5591f),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Ver mais",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artigos: ",
                      style: TextStyle(color: Color(0xFFa5591f)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listaBotaoArtigo.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Cardbotaotexto(botaotexto: listaBotaoArtigo[i]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 95,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFa5591f),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Ver mais",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
