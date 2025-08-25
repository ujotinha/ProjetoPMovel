import 'package:projetointheirskin/domain/NotaMeuDiario.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/pages/meu_diario.dart';

class CardAnotacao extends StatefulWidget {
  NotaDiario notaDiario;

  CardAnotacao({
    required this.notaDiario,
    super.key,
  });

  @override
  State<CardAnotacao> createState() => _CardAnotacaoState();
}

class _CardAnotacaoState extends State<CardAnotacao> {
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
                              color: Color(0xFFa5591f).withOpacity(0.8)),
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
                              color: Color(0xFFa5591f).withOpacity(0.8)),
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
