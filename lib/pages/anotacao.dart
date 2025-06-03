import 'package:flutter/material.dart';

class Anotacao extends StatefulWidget {
  const Anotacao({super.key});

  @override
  State<Anotacao> createState() => _AnotacaoState();
}

class _AnotacaoState extends State<Anotacao> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFe7ddc9),
          appBar: buildAppBar(),
          body: buildbody(),
        ));
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Color(0xFFe0d4bd),
      title: Text('In Their Skin', style: TextStyle(color:Colors.brown),),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
          bottomRight: Radius.circular(90.0),
        ),
      ),

    );
}

buildbody(){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
              color: Color(0xFFf0e6d4),
            borderRadius: BorderRadius.all(Radius.circular(16))
          ),
          height: 800,
          child: Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.orange,
                  ),
                  Spacer(),
                  Icon(
                    Icons.lock_open,
                    color: Color(0xFF7e4f27),
  ),
            ],
          ),

        ),
  ),
    );


}
}
