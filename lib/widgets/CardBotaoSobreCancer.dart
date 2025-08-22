import 'package:flutter/material.dart';


class CardBotaoSobreCancer extends StatefulWidget {

  @override
  State<CardBotaoSobreCancer> createState() => _CardBotaoSobreCancerState();
}

class _CardBotaoSobreCancerState extends State<CardBotaoSobreCancer> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFc18e67),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Text(
          '',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
