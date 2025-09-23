import 'package:flutter/material.dart';
import 'package:projetointheirskin/db/botaoimagem_dao.dart';
import 'package:projetointheirskin/db/botaotexto_dao.dart';
import 'package:projetointheirskin/domain/BotaoImagem.dart';
import 'package:projetointheirskin/domain/BotaoTexto.dart';
import 'package:projetointheirskin/widgets/CardBotaoImagem.dart';
import 'package:projetointheirskin/widgets/CardBotaoTexto.dart';

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  late Future<List<Botaotexto>> listaBotaoArtigo;
  late Future<List<Botaotexto>> listaBotaoDicas;
  late Future<List<Botaotexto>> listaBotaoSobreCancer;
  late Future<List<Botaoimagem>> listaBotaoVideo;

  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaBotaoArtigo = BotaotextoDao().listarBotaoArtigo();
    listaBotaoDicas = BotaotextoDao().listarBotaoDicas();
    listaBotaoSobreCancer = BotaotextoDao().listarBotaoSobreCancer();
    listaBotaoVideo = BotaoimagemDao().listarBotaoImagem();
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
                      child: FutureBuilder(
                          future: listaBotaoSobreCancer,
                          builder: (context, snapshot){
                            if(snapshot.hasData){
                              List<Botaotexto> lista = snapshot.requireData;
                              return buildListViewTexto(lista);
                            }
                            return Center(child: CircularProgressIndicator(),);
                          }
                      )
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
                      child: FutureBuilder(
                        future: listaBotaoVideo,
                        builder: (context, snapshot){
                          if(snapshot.hasData){
                            List<Botaoimagem> lista = snapshot.requireData;
                            return buildListViewImagem(lista);
                          }
                          return Center(child: CircularProgressIndicator(),);
                        }
                      )
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
                        child: FutureBuilder(
                            future: listaBotaoDicas,
                            builder: (context, snapshot){
                              if(snapshot.hasData){
                                List<Botaotexto> lista = snapshot.requireData;
                                return buildListViewTexto(lista);
                              }
                              return Center(child: CircularProgressIndicator(),);
                            }
                        )
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
                        child: FutureBuilder(
                            future: listaBotaoArtigo,
                            builder: (context, snapshot){
                              if(snapshot.hasData){
                                List<Botaotexto> lista = snapshot.requireData;
                                return buildListViewTexto(lista);
                              }
                              return Center(child: CircularProgressIndicator(),);
                            }
                        )
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

  buildListViewTexto(List<Botaotexto> listaBotao){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listaBotao.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          child: Cardbotaotexto(botaotexto: listaBotao[i]),
        );
      },
    );
  }

  buildListViewImagem(List<Botaoimagem> listaBotao){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listaBotao.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          child: Cardbotaoimagem(botaoimagem: listaBotao[i]),
        );
      },
    );
  }
}
