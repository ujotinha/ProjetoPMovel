import 'package:flutter/material.dart';

class consultas extends StatefulWidget {
  const consultas({super.key});

  @override
  State<consultas> createState() => _consultasState();
}

class _consultasState extends State<consultas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios), color: Color(0xFFc77b44), iconSize: 20,),
                  Text("Consultas", style: TextStyle( fontSize: 20, color: Color(0xFFc77b44))),
                ],
              ),
              Container(
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Color(0xFFE0D4BD), borderRadius: BorderRadius.circular(12)),
                height: 100,
                width: double.infinity, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Pneumologista - ", style: TextStyle(color: Color(0XFF7b4a28), fontSize: 17), ),
                        Text("Doutor Aragão", style: TextStyle(color: Color(0XFF7b4a28), fontSize: 12),),
                ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10:30", style: TextStyle(color: Color(0XFF7b4a28), fontSize: 18,)),

                        Row(
                          children: [
                            Text("qua,16 de abr.", style: TextStyle(color: Color(0XFF7b4a28))),
                            Icon(Icons.toggle_on, color: Color (0xFFa5591f), size: 40,),
                          ],
                        ),

                      ],
                    )
                  ],
                ),

                ),

           SizedBox(
            height: 10,
           ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFE0D4BD), borderRadius: BorderRadius.circular(12)),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ],
          ),
         ),
        ),
      );
  }
}
