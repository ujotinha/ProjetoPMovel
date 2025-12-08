import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:projetointheirskin/providers/notas_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NotasProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    ),
  );
}