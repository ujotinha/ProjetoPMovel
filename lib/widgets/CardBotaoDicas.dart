import 'package:flutter/material.dart';


class CardBotaoDicas extends StatefulWidget {

  @override
  State<CardBotaoDicas> createState() => _CardBotaoDicasState();
}

class _CardBotaoDicasState extends State<CardBotaoDicas> {

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
