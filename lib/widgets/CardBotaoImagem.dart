import 'package:flutter/material.dart';

class Cardbotaoimagem extends StatefulWidget {
  const Cardbotaoimagem({super.key});

  @override
  State<Cardbotaoimagem> createState() => _CardbotaoimagemState();
}

class _CardbotaoimagemState extends State<Cardbotaoimagem> {
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
