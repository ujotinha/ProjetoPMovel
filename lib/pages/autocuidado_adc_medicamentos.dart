import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AutocuidadoAdcMedicamentos extends StatefulWidget {
  const AutocuidadoAdcMedicamentos({super.key});

  @override
  State<AutocuidadoAdcMedicamentos> createState() => _AutocuidadoAdcMedicamentosState();
}

class _AutocuidadoAdcMedicamentosState extends State<AutocuidadoAdcMedicamentos> {
  bool light=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: buildBody(light),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Color(0xFFe0d4bd),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      title: Image.asset("assets/logo.png", height: 50, width: 80),
    );
  }

  buildBody(bool light){

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(10)),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon:  Icon(Icons.chevron_left), color: Color(0xFFc77b44), iconSize: 30, ),
                Text("Medicamentos", style: GoogleFonts.radley(color: Color(0xFF7b4a28), fontSize: 20))
              ],
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(18)),
              height: 200,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("07", style: GoogleFonts.libreCaslonDisplay(fontSize: 40, color: Color(0xFFb2937f), height: 1.3), ),
                            Text("59", style: GoogleFonts.libreCaslonDisplay(fontSize: 40, color: Color(0xFFb2937f), height: 1.3), ),
                          ],
                        ),


                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                                Text("08", style: GoogleFonts.libreCaslonDisplay(fontSize: 60, color: Color(0xFF7b4a28), height: 1),),
                                Text(":", style: TextStyle(fontSize: 50, color: Color(0xFF7b4a28), height: 1),),
                                Text("00", style: GoogleFonts.libreCaslonDisplay(fontSize: 60, color: Color(0xFF7b4a28), height: 1),),
                          ],
                        ),


                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("09", style: GoogleFonts.libreCaslonDisplay(fontSize: 40, color: Color(0xFFb2937f), height: 1.3), ),
                            Text("01", style: GoogleFonts.libreCaslonDisplay(fontSize: 40, color: Color(0xFFb2937f), height: 1.3), ),
                          ],
                        ),


                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Nome do Medicamento:", style: GoogleFonts.radley(fontSize: 16, color: Color(0xFF7b4a28))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(18)),
              height: 40,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(decoration: InputDecoration(isCollapsed: true, contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 13.0), border: InputBorder.none,),)
                ],

              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Função do Medicamento:", style: GoogleFonts.radley(fontSize: 16, color: Color(0xFF7b4a28))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(18)),
              height: 40,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(decoration: InputDecoration(isCollapsed: true, contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 13.0), border: InputBorder.none,),)
                ],

              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Frequencia:", style: GoogleFonts.radley(fontSize: 16, color: Color(0xFF7b4a28))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(18)),
              height: 40,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(decoration: InputDecoration(isCollapsed: true, contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 13.0), border: InputBorder.none,),)
                ],

              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 15, right: 12),
              decoration: BoxDecoration(color: Color(0xFFdfceb4), borderRadius: BorderRadius.circular(18)),
              height: 40,
              width: 350,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notificação", style: GoogleFonts.radley(fontSize: 16, color: Color(0xFF7b4a28), height: 1.3),),
                  IconButton(onPressed: () {}, icon:  Icon(Icons.toggle_on), color: Color(0xFFa5591f), iconSize: 32, padding: EdgeInsets.zero),
                ],


              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 115,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Salvar", style: GoogleFonts.radley(fontSize: 16, height: 1.3),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFa5591f),
                        foregroundColor: Colors.white,
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
}
