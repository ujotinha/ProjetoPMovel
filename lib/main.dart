import 'package:flutter/material.dart';
import 'package:projetointheirskin/pages/autocuidado.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:projetointheirskin/pages/inicio.dart';
import 'package:projetointheirskin/pages/login_page.dart';
import 'package:provider/provider.dart';
import 'package:projetointheirskin/providers/profile_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProfileProvider()),],
      child: MaterialApp(home:LoginPage()))
  );
}
