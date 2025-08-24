import 'package:flutter/material.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MeuDiario extends StatefulWidget {
  const MeuDiario({super.key});

  @override
  State<MeuDiario> createState() => _MeuDiarioState();
}

class _MeuDiarioState extends State<MeuDiario> {
  //List listaInformacoes = [];
  //List listaPlanoTratamento = [];

  @override
  void initState() {
    super.initState();
    //loadData();
  }

  /*loadData() async {
    listaInformacoes = await PacientesDao().listarPacientes();
    listaPlanoTratamento = await PlanoTratamentoDao().listarDiagnostico();
    setState(() {});
  }*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          body: buildBody(),
          floatingActionButton: buildFloatingActionButton()),
    );
  }

  buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(10)),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          spacing: 30,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
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
            Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFdfceb5),
                ),
                child:
                  Row(
                    spacing: 2,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("13",
                                  style: GoogleFonts.libreCaslonDisplay(
                                      color: const Color(0xFFa5591f), fontSize: 15)),
                              Text("Abr.",
                                  style: GoogleFonts.libreCaslonDisplay(
                                      color: const Color(0xFFa5591f), fontSize: 15)),
                              Text("2025",
                                  style: GoogleFonts.libreCaslonDisplay(
                                      color: const Color(0xFFa5591f), fontSize: 15))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 26,
                        child: Container(
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("A",
                                  style: GoogleFonts.libreCaslonDisplay(
                                      color: const Color(0xFFa5591f), fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 80,
                          // SEM LARGURA FIXA
                          child: const Icon(
                            Icons.edit,
                            color: Color(0xFFa5591f),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
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
