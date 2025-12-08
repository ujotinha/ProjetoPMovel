import 'package:flutter/material.dart';
import 'package:projetointheirskin/api/Notas_api.dart';
import 'package:projetointheirskin/domain/Notas.dart';

class NotasProvider extends ChangeNotifier {
  final NotasApi _api = NotasApi();

  List<Notas> _notas = [];
  bool _isLoading = false;

  List<Notas> get notas => _notas;
  bool get isLoading => _isLoading;

  Future<void> fetchNotas() async {
    _isLoading = true;
    notifyListeners();

    try {
      _notas = await _api.findAll();
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void salvarNota(Notas nota) {
    int index = _notas.indexWhere((n) => n == nota);

    if (index != -1) {
      _notas[index] = nota;
    } else {
      _notas.add(nota);
    }

    notifyListeners();
  }
}