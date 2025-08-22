import 'package:flutter/material.dart';

class Autocuidado extends StatefulWidget {
  const Autocuidado({super.key});

  @override
  State<Autocuidado> createState() => _AutocuidadoState();
}

class _AutocuidadoState extends State<Autocuidado> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: buildBody(),
      //bottomNavigationBar: ,
    ));
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFe0d4bd),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
          bottomRight: Radius.circular(90.0),
        ),
      ),
      centerTitle: false,
      title: Image.asset("assets/logo.png", height: 50, width: 110),
      actions: [
        Icon(Icons.person)
      ],
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        color: Color(0xFFf0e6d4),
        width: double.infinity,
        height: 400,
      ),
    );
  }
  buildBottomNavigationBar(){
    return BottomNavigationBar(
      backgroundColor: Color(0xFFc77b44),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Inbox'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Inbox'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Inbox')
      ],
    );
  }
}
