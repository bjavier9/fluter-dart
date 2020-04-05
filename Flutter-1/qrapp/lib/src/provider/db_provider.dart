import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:qreaderapp/src/models/scan_model.dart';
export 'package:qreaderapp/src/models/scan_model.dart';
class Dbprovider {
  static Database _database;
  static final Dbprovider db = Dbprovider._();
  Dbprovider._();
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path, 'ScansDb.db');
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("""
      CREATE TABLE Scans (
        id INTEGER PRIMARY KEY,
        tipo TEXT NOT NULL,
        valor TEXT NOT NULL
        );""");
    });
    
  }
  nuevoScanRow(ScanModel nuevoScan) async {
      final db = await database;
      final resp = await db.rawInsert(
        "INSERT IN TO Scans(id,tipo,valor) "
        "VALUES ('${nuevoScan.id}', '${nuevoScan.tipo}', '${nuevoScan.valor}')"
      );
      return resp;
    }

      nuevoScan(ScanModel nuevoScan) async {
      final db = await database;
      final resp = await db.insert('Scans',nuevoScan.toJson());
      return resp;
    }

    Future<ScanModel> getScansId(int id)async{
      final db = await database;
      final res = await db.query('Scans', where:'id=?', whereArgs:[id]);
      return res.isNotEmpty? ScanModel.fromJson(res.first):null;
    }
    Future<List<ScanModel>> gettodoScans()async{
      final db = await database;
      final res = await db.query('Scans');
      List<ScanModel> list = res.isNotEmpty
                                  ? res.map((c)=>ScanModel.fromJson(c)).toList()
                                  :[];
      return list;
    }
    Future<List<ScanModel>> getScansportipo(String tipo)async{
      final db = await database;
      final res = await db.rawQuery("Select * from Scans WHERE tipo='$tipo'");
      List<ScanModel> list = res.isNotEmpty
                                  ? res.map((c)=>ScanModel.fromJson(c)).toList()
                                  :[];
      return list;
    }
    
   Future<int> updateScan(ScanModel nuevoScan) async{

      final db = await database;
      final res = await db.update('Scans',nuevoScan.toJson(), where: 'id=?', whereArgs:[nuevoScan.id]);
      return res;
    }

    Future<int> deleteScan(int id) async{
      final db = await database;
      final res = await db.delete('Scans', where:'id=?', whereArgs: [id]);
      return res;
    }

      Future<int> deleteAll() async{
      final db = await database;
      final res = await db.rawDelete('delete from Scans');
      return res;
    }



}
