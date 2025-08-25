import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projetointheirskin/db/meudiario_dao.dart';
import 'package:projetointheirskin/domain/NotaMeuDiario.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/pages/meu_diario.dart';
import 'package:projetointheirskin/widgets/cardMeuDiario.dart';

class Anotacao extends StatefulWidget {
  NotaDiario notaDiario;

  Anotacao({
    required this.notaDiario,
    super.key
  });

  @override
  State<Anotacao> createState() => _AnotacaoState();
}

class _AnotacaoState extends State<Anotacao> {
  NotaDiario get notaDiario => widget.notaDiario;
  late String nomeNota;
  late String conteudo;

  @override
  void initState() {
    nomeNota = widget.notaDiario.nome_Nota;
    conteudo = widget.notaDiario.Conteudo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe7ddc9),
        appBar: buildAppBar(),
        body: buildBody(),
        floatingActionButton: buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
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
        padding: EdgeInsets.all(12),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MeuDiario()),
                                );
                              },
                              icon: Icon(Icons.chevron_left),
                              color: Color(0xFFc77b44),
                              iconSize: 30,
                            ),
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(
                                left: 18, top: 0, right: 18, bottom: 4),
                            width: double.infinity,
                            child: Column(
                              spacing: 0,
                              children: [
                                TextFormField(
                                  initialValue: nomeNota,
                                  decoration: InputDecoration(
                                    hintText: 'Título da nota',
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFFa5591f).withOpacity(0.8)),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.libreCaslonDisplay(
                                    color: const Color(0xFFa5591f),
                                    fontSize: 26, height: 1,
                                  ),
                                ),
                                Divider(color: Color(0xFFa5591f), height: 0),
                                TextFormField(
                                  initialValue: conteudo,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 32,
                                  decoration: InputDecoration(
                                    hintText: 'Escreva seu registro aqui...',
                                    hintStyle: TextStyle(
                                        color:
                                        Color(0xFFa5591f).withOpacity(0.8)),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.libreCaslonDisplay(
                                    color: const Color(0xFFa5591f),
                                    fontSize: 16, height: 1,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ))
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      //return CardMeuDiario(notaDiario: listaNotas[i],);
                    },
                  ),
                )
              ],
            )));
  }

  buildFloatingActionButton() {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: 100,
          height: 30,
          child: FloatingActionButton(
            backgroundColor: Color(0xFFa5591f),
            onPressed: () {

            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            elevation: 0,
            highlightElevation: 0.0,
            child: Text(
              'Salvar',
              style: GoogleFonts.libreCaslonDisplay(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ));
  }
}
