import 'package:projetointheirskin/domain/Usuario.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  late User _user;

  User get user => _user;

  setUser(User user) {
    _user = user;

    // Notifica todos aqueles que estão ouvindo o ProfileProvider
    notifyListeners();
  }
}