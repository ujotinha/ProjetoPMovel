import 'package:projetointheirskin/pages/pacientes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMeuDiario extends StatefulWidget {
  //PlanoTratamento planoTratamento;

  CardMeuDiario({
    //required this.planoTratamento,
    super.key,
  });

  @override
  State<CardMeuDiario> createState() => _CardMeuDiarioState();
}

class _CardMeuDiarioState extends State<CardMeuDiario> {
  //PlanoTratamento get planoTratamento => widget.planoTratamento;

  @override
  void initState() {
    super.initState();
    //diagnostico = widget.planoTratamento.Diagnostico;
  }

  @override
  Widget build(BuildContext context) {
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
                      "13",
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Abr.",
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "2025",
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
                      "Minha consulta",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.libreCaslonDisplay(
                        color: const Color(0xFFa5591f),
                        fontSize: 18,
                        height: 1,
                      ),
                    ),
                    Text(
                      "Dom.",
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
                      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
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
