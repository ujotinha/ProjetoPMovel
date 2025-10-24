import 'package:flutter/material.dart';

import '../domain/BotaoTexto.dart';

class ConteudoPesquisa extends StatefulWidget {

  Botaotexto botaotexto;

  ConteudoPesquisa({
    required this.botaotexto,
    super.key
  });

  @override
  State<ConteudoPesquisa> createState() => _ConteudoPesquisaState();
}

class _ConteudoPesquisaState extends State<ConteudoPesquisa> {
  Botaotexto get botaotexto => widget.botaotexto;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe7ddc9),
        body: Container(
          padding: EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(botaotexto.titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFc77b44)),)
                        ],
                      ),
                      Text(botaotexto.texto, style: TextStyle(color: Color(0xFFc77b44)),),
                      Image.network(
                        "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=${botaotexto.url}",
                        height: 80,
                        width: 80,
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        appBar: buildAppBar(),
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
}
