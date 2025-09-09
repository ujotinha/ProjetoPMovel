import 'package:flutter/material.dart';

class ConteudoPesquisa extends StatefulWidget {
  const ConteudoPesquisa({super.key});

  @override
  State<ConteudoPesquisa> createState() => _ConteudoPesquisaState();
}

class _ConteudoPesquisaState extends State<ConteudoPesquisa> {
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
