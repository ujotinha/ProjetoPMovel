import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projetointheirskin/domain/Notas.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/widgets/CardAnotacao.dart';
import 'package:projetointheirskin/providers/notas_provider.dart';

class Anotacao extends StatefulWidget {
  final Notas? notas;

  const Anotacao({
    this.notas,
    super.key,
  });

  @override
  State<Anotacao> createState() => _AnotacaoState();
}

class _AnotacaoState extends State<Anotacao> {
  late TextEditingController _tituloController;
  late TextEditingController _conteudoController;

  @override
  void initState() {
    super.initState();
    _tituloController = TextEditingController(text: widget.notas?.nome_Nota ?? "");
    _conteudoController = TextEditingController(text: widget.notas?.Conteudo ?? "");
  }

  @override
  void dispose() {
    _tituloController.dispose();
    _conteudoController.dispose();
    super.dispose();
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
            child:
            Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      CardAnotacao(
                        tituloController: _tituloController,
                        conteudoController: _conteudoController,
                      )
                    ],
                  ),
                ),
              ],
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
            onPressed: _salvarNota,
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

  void _salvarNota() {
    final provider = Provider.of<NotasProvider>(context, listen: false);
    final agora = DateTime.now();

    if (widget.notas != null) {
      widget.notas!.nome_Nota = _tituloController.text;
      widget.notas!.Conteudo = _conteudoController.text;
      provider.salvarNota(widget.notas!);
    } else {
      Notas novaNota = Notas(
        nome_Nota: _tituloController.text,
        Conteudo: _conteudoController.text,
        Data_Escrita: "${agora.day}/${agora.month}/${agora.year}",
        Dia: "Hoje",
      );
      provider.salvarNota(novaNota);
    }

    Navigator.pop(context);
  }
}