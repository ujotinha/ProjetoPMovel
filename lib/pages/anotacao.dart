import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/NotaMeuDiario.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/widgets/CardAnotacao.dart';

class Anotacao extends StatefulWidget {
  NotaDiario ?notaDiario;

  Anotacao({
    this.notaDiario,
    super.key,
  });

  @override
  State<Anotacao> createState() => _AnotacaoState();
}

class _AnotacaoState extends State<Anotacao> {
  NotaDiario? get notaDiario => widget.notaDiario;

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
            child:
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, i) {
                  return CardAnotacao(notaDiario: notaDiario);
                },
              ),
            )

            ));
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
