import 'package:flutter/material.dart';
import 'package:projetointheirskin/db/meudiario_dao.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/widgets/cardMeuDiario.dart';

class MeuDiario extends StatefulWidget {
  const MeuDiario({super.key});

  @override
  State<MeuDiario> createState() => _MeuDiarioState();
}

class _MeuDiarioState extends State<MeuDiario> {
  List listaNotas = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaNotas = await MeuDiarioDao().listarNotas();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: buildBody(),
          floatingActionButton: buildFloatingActionButton()),
    );
  }

  buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFe0d4bd),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle),
          color: Color(0xFFc77b44),
        )
      ],
      title: Image.asset("assets/logo.png", height: 50, width: 80),
    );
  }

  buildBody() {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Color(0xFFf0e6d4),
                borderRadius: BorderRadius.circular(10)),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homepage()),
                        );
                      },
                      icon: Icon(Icons.chevron_left),
                      color: Color(0xFFc77b44),
                      iconSize: 30,
                    ),
                    Text("Meu Diário",
                        style: GoogleFonts.radley(
                            color: Color(0xFFa5591f), fontSize: 22)),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: listaNotas.length,
                    itemBuilder: (context, i) {
                      return CardMeuDiario(notaDiario: listaNotas[i],);
                    },
                  ),
                )
              ],
            )));
  }

  buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Color(0xFFa5591f),
      onPressed: () {},
      shape: CircleBorder(),
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
