import 'package:projetointheirskin/db/pesquisa_helper.dart';
import 'package:projetointheirskin/domain/BotaoImagem.dart';
import 'package:sqflite/sqflite.dart';

class BotaoimagemDao{
  Future<List<Botaoimagem>> listarBotaoImagem () async{
    Database db = await PesquisaHelper().initDB();
    String sql = 'SELECT * FROM BOTAOIMAGEM';
    var result = await db.rawQuery(sql);

    List<Botaoimagem> listaBotaoImagem = [];

    await Future.delayed(Duration(seconds: 3));
    for(var json in result){
      Botaoimagem botaoimagem = Botaoimagem.fromJson(json);
      listaBotaoImagem.add(botaoimagem);
    }
    return listaBotaoImagem;
  }
}