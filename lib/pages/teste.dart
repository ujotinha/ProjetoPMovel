import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          color: Colors.green,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 100, crossAxisSpacing: 70, mainAxisSpacing: 30),
            children: [
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
              Container(color: Colors.black, height: 20, width: 20),
            ],
          ),

        ),
      ),
    );
  }
}
