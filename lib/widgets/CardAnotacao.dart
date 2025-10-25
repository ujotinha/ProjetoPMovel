import 'dart:ui';
import 'package:projetointheirskin/domain/Notas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/pages/meu_diario.dart';
import 'package:projetointheirskin/widgets/CardCuriosidade.dart';

class CardAnotacao extends StatefulWidget {
  Notas? notas;

  CardAnotacao({
    this.notas,
    super.key,
  });

  @override
  State<CardAnotacao> createState() => _CardAnotacaoState();
}

class _CardAnotacaoState extends State<CardAnotacao> {
  Notas? get notas => widget.notas;
  late String nomeNota;
  late String conteudo;

  @override
  void initState() {
    if (widget.notas != null) {
      nomeNota = widget.notas!.nome_Nota;
      conteudo = widget.notas!.Conteudo;
    } else {
      nomeNota = "";
      conteudo = "";
    }
    super.initState();
  }

  void _mostrarCuriosidade(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.1),
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: CardCuriosidade(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                        MaterialPageRoute(builder: (context) => MeuDiario()),
                      );
                    },
                    icon: Icon(Icons.chevron_left),
                    color: Color(0xFFc77b44),
                    iconSize: 30,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      _mostrarCuriosidade(context);
                    },
                    icon: Icon(Icons.lightbulb_outlined),
                    color: Color(0xFFc77b44),
                    iconSize: 30,
                  ),
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 18, top: 0, right: 18, bottom: 4),
                  width: double.infinity,
                  child: Column(
                    spacing: 0,
                    children: [
                      TextFormField(
                        initialValue: nomeNota,
                        decoration: InputDecoration(
                          hintText: 'Título da nota',
                          hintStyle: TextStyle(
                              color: Color(0xFFa5591f).withValues(alpha: 0.8)),
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.libreCaslonDisplay(
                          color: const Color(0xFFa5591f),
                          fontSize: 26,
                          height: 1,
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
                              color: Color(0xFFa5591f).withValues(alpha: 0.8)),
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.libreCaslonDisplay(
                          color: const Color(0xFFa5591f),
                          fontSize: 16,
                          height: 1,
                        ),
                      ),
                    ],
                  )),
            ],
          ))
        ],
      )
    ]);
  }
}
