import 'package:projetointheirskin/db/pesquisa_helper.dart';
import 'package:projetointheirskin/domain/BotaoTexto.dart';
import 'package:sqflite/sqflite.dart';

class BotaotextoDao{
  Future<List<Botaotexto>> listarBotaoArtigo() async{
    Database db = await PesquisaHelper().initDB();
    String sql = 'SELECT * FROM BOTAOTEXTO WHERE isArtigo = 1';
    var result = await db.rawQuery(sql);

    List<Botaotexto> listaBotaoArtigo = [];

    await Future.delayed(Duration(seconds: 3));
    for(var json in result){
      Botaotexto botaotexto = Botaotexto.fromJson(json);
      listaBotaoArtigo.add(botaotexto);
    }
    return listaBotaoArtigo;

  }
  Future<List<Botaotexto>> listarBotaoDicas() async{
    Database db = await PesquisaHelper().initDB();
    String sql = 'SELECT * FROM BOTAOTEXTO WHERE isDicas = 1';
    var result = await db.rawQuery(sql);

    List<Botaotexto> listaBotaoDicas = [];

    await Future.delayed(Duration(seconds: 3));
    for(var json in result){
      Botaotexto botaotexto = Botaotexto.fromJson(json);
      listaBotaoDicas.add(botaotexto);
    }
    return listaBotaoDicas;
  }
  Future<List<Botaotexto>> listarBotaoSobreCancer() async{
    Database db = await PesquisaHelper().initDB();
    String sql = 'SELECT * FROM BOTAOTEXTO WHERE isSobreCancer = 1';
    var result = await db.rawQuery(sql);

    List<Botaotexto> listaBotaoSobreCancer = [];

    await Future.delayed(Duration(seconds: 3));
    for(var json in result){
      Botaotexto botaotexto = Botaotexto.fromJson(json);
      listaBotaoSobreCancer.add(botaotexto);
    }
    return listaBotaoSobreCancer;
  }
}