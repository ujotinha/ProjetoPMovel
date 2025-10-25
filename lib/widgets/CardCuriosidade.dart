import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetointheirskin/domain/Curiosidade.dart';
import 'package:projetointheirskin/api/Curiosidade_api.dart';

class CardCuriosidade extends StatefulWidget {
  const CardCuriosidade({Key? key}) : super(key: key);

  @override
  State<CardCuriosidade> createState() => _CardCuriosidadeState();
}

class _CardCuriosidadeState extends State<CardCuriosidade> {
  late Future<Curiosidade> _curiosityFuture;

  @override
  void initState() {
    super.initState();
    _fetchCuriosity();
  }

  void _fetchCuriosity() {
    final api = CuriosidadeApi();
    final now = DateTime.now();
    // Inicia a chamada da API e armazena o Future
    _curiosityFuture =
        api.findByDay();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFfaf3e8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Color(0xFFc77b44), width: 2),
      ),
      title: Text(
        'Curiosidade',
        style: GoogleFonts.libreCaslonDisplay(
          color: const Color(0xFFa5591f),
          fontWeight: FontWeight.bold,
        ),
      ),
      content: FutureBuilder<Curiosidade>(
        future: _curiosityFuture,
        builder: (context, snapshot) {

          if (snapshot.hasData) {
            final curiosidade = snapshot.data!;
            return Text(
              'Nesse mesmo dia em ${curiosidade.year} - ${curiosidade.text} \n${curiosidade.textExtract}',
              style: GoogleFonts.libreCaslonDisplay(
                color: const Color(0xFFa5591f),
                fontSize: 16,
              ),
            );
          }

          return Center(child: CircularProgressIndicator(color: Color(0xFFa5591f),));
        }
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'FECHAR',
            style: GoogleFonts.libreCaslonDisplay(
              color: const Color(0xFFc77b44),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}