import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class PesquisaHelper{
  Future<Database> initDB() async{
    String path = await getDatabasesPath();
    String dbName = 'pesquisa.db';
    String dbPath = join(path, dbName);

    await deleteDatabase(dbPath);

    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );
    return database;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE BOTAOTEXTO (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    isArtigo INTEGER,
    isDicas INTEGER,
    isSobreCancer INTEGER
    );''';
    await db.execute(sql);

    sql = '''CREATE TABLE BOTAOIMAGEM (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    urlImage TEXT,
    tituloVideo  TEXT,
    autor TEXT
    );''';
    await db.execute(sql);

    sql = "INSERT INTO BOTAOTEXTO (titulo, isArtigo, isDicas, isSobreCancer) VALUES ('O que é o câncer de pulmão', 0, 0, 1);";
    await db.execute(sql);

    sql = "INSERT INTO BOTAOTEXTO (titulo, isArtigo, isDicas, isSobreCancer) VALUES ('O que é o câncer de pulmão', 0, 0, 1);";
    await db.execute(sql);

    sql = "INSERT INTO BOTAOTEXTO (titulo, isArtigo, isDicas, isSobreCancer) VALUES ('O que é o câncer de pulmão', 0, 0, 1);";
    await db.execute(sql);

    sql = "INSERT INTO BOTAOTEXTO (titulo, isArtigo, isDicas, isSobreCancer) VALUES ('O que é o câncer de pulmão', 0, 0, 1);";
    await db.execute(sql);

    sql = "INSERT INTO BOTAOTEXTO (titulo, isArtigo, isDicas, isSobreCancer) VALUES ('Evitar o tabagismo', 0, 1, 0);";
    await db.execute(sql);

    sql = "INSERT INTO BOTAOTEXTO (titulo, isArtigo, isDicas, isSobreCancer) VALUES ('Radiologia do câncer de pulmão', 1, 0, 0);";
    await db.execute(sql);

    sql = "INSERT INTO BOTAOIMAGEM (urlImage, tituloVideo, autor) VALUES ('https://i.ytimg.com/vi/z1KKxTO0ITw/maxresdefault.jpg', 'Câncer de Pulmão', 'Hospital Alemão Oswaldo');";
    await db.execute(sql);
  }
}