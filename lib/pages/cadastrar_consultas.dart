import'package:flutter/material.dart';

class CadastrarConsulta extends StatefulWidget {
  const CadastrarConsulta({super.key});

  @override
  State<CadastrarConsulta> createState() =>
      _CadastrarConsultaState();
}

class _CadastrarConsultaState extends State<CadastrarConsulta> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          body: buildBody(),
      )
    );
  }

  buildAppBar() {
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
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_left),
                  color: Color(0xFFc77b44),
                  iconSize: 30,
                ),
                Text("Consultas",
                    style: TextStyle(color: Color(0xFFa5591f), fontSize: 18)),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  }

