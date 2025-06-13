import 'package:flutter/material.dart';

class AutocuidadoMedicamentos extends StatefulWidget {
  const AutocuidadoMedicamentos({super.key});

  @override
  State<AutocuidadoMedicamentos> createState() => _AutocuidadoMedicamentosState();
}

class _AutocuidadoMedicamentosState extends State<AutocuidadoMedicamentos> {
  bool light=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: buildBody(light),
          floatingActionButton: buildFloatingActionButton()
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
                Text("Medicamentos", style: TextStyle(color: Color(0xFFa5591f), fontSize: 18))
              ],
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: Color(0xFFe0d4bd), borderRadius: BorderRadius.circular(18)),
              height: 98,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Erlotinibe", style: TextStyle(color: Color(0xFF7b4a28))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("08:00", style: TextStyle(fontSize: 20, color: Color(0xFF7b4a28)),),
                      Row(
                        children: [
                          Text("Todos os dias", style: TextStyle(fontSize: 10, color: Color(0xFF7b4a28)),),
                          IconButton(onPressed: () {}, icon:  Icon(Icons.toggle_on), color: Color(0xFFa5591f), iconSize: 32,),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: Color(0xFFe0d4bd), borderRadius: BorderRadius.circular(18)),
              height: 98,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gefitinibe", style: TextStyle(color: Color(0xFF7b4a28))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("10:00", style: TextStyle(fontSize: 20, color: Color(0xFF7b4a28)),),
                      Row(
                        children: [
                          Text("Todos os dias", style: TextStyle(fontSize: 10, color: Color(0xFF7b4a28)),),
                          IconButton(onPressed: () {}, icon:  Icon(Icons.toggle_on), color: Color(0xFFa5591f), iconSize: 32,),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildFloatingActionButton(){
    return FloatingActionButton(
      backgroundColor: Color(0xFFa5591f),
      onPressed: () {},
      shape: CircleBorder(),
      child: Icon(Icons.add, color: Colors.white,),
    );
  }
}
