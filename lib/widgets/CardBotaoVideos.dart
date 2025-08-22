import 'package:flutter/material.dart';

class CardBotaoVideos extends StatefulWidget {
  const CardBotaoVideos({super.key});

  @override
  State<CardBotaoVideos> createState() => _CardBotaoVideosState();
}

class _CardBotaoVideosState extends State<CardBotaoVideos> {
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
        child: Image.network("")
        ),
      );
  }
}
