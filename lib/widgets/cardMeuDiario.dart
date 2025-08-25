import 'package:projetointheirskin/domain/NotaMeuDiario.dart';
import 'package:projetointheirskin/pages/pacientes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMeuDiario extends StatefulWidget {
  NotaDiario notaDiario;

  CardMeuDiario({
    required this.notaDiario,
    super.key,
  });

  @override
  State<CardMeuDiario> createState() => _CardMeuDiarioState();
}

class _CardMeuDiarioState extends State<CardMeuDiario> {
  NotaDiario get notaDiario => widget.notaDiario;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String dataCompleta = notaDiario.Data_Escrita;
    List<String> partesData = dataCompleta.split('/');

    String dia = '';
    String mesNumero = '';
    String ano = '';
    String mesAbreviado = '';

    if (partesData.length == 3) {
      dia = partesData[0];
      mesNumero = partesData[1];
      ano = partesData[2];
    }

    if (mesNumero == '01') {
      mesAbreviado = 'Jan.';
    } else if (mesNumero == '02') {
      mesAbreviado = 'Fev.';
    } else if (mesNumero == '03') {
      mesAbreviado = 'Mar.';
    } else if (mesNumero == '04') {
      mesAbreviado = 'Abr.';
    } else if (mesNumero == '05') {
      mesAbreviado = 'Mai.';
    } else if (mesNumero == '06') {
      mesAbreviado = 'Jun.';
    } else if (mesNumero == '07') {
      mesAbreviado = 'Jul.';
    } else if (mesNumero == '08') {
      mesAbreviado = 'Ago.';
    } else if (mesNumero == '09') {
      mesAbreviado = 'Set.';
    } else if (mesNumero == '10') {
      mesAbreviado = 'Out.';
    } else if (mesNumero == '11') {
      mesAbreviado = 'Nov.';
    } else if (mesNumero == '12') {
      mesAbreviado = 'Dez.';
    } else {
      mesAbreviado = 'Inv.';
    }

    return Column(
      children: [
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFdfceb5),
            padding: const EdgeInsets.only(
                left: 5, top: 5, right: 25, bottom: 5),
            fixedSize: const Size(double.infinity, 90),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dia,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      mesAbreviado,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      ano,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 26,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notaDiario.nome_Nota,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 18,
                        height: 1,
                      ),
                    ),
                    Text(
                      notaDiario.Dia,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 13,
                        height: 1,
                      ),
                    ),
                    const Divider(color: Color(0xFFa5591f)),
                    Text(
                      notaDiario.Conteudo,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 13,
                        height: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
