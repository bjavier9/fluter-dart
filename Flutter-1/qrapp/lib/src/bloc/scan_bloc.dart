import 'dart:async';

import 'package:qreaderapp/src/bloc/validator_bloc.dart';
import 'package:qreaderapp/src/models/scan_model.dart';
import 'package:qreaderapp/src/provider/db_provider.dart';

class ScansBloc with Validators{
  static final ScansBloc _singleton = new ScansBloc._internal();
  
  factory ScansBloc(){
    return _singleton;
  }
  
  ScansBloc._internal() {
     ObtenerScans();

  }

  final _scansController=StreamController<List<ScanModel>>.broadcast();
  
  Stream<List<ScanModel>> get scansStream =>_scansController.stream.transform(validarGeo);
    Stream<List<ScanModel>> get scansStreamHttp =>_scansController.stream..transform(validarHttp);

  dispose(){
    _scansController?.close();
  }

  agregarScan(ScanModel scan)async{
    await Dbprovider.db.nuevoScan(scan);
    ObtenerScans();
  }

  ObtenerScans() async{
    _scansController.sink.add( await Dbprovider.db.gettodoScans());
  }

  borrarScan(int id)async{
    await Dbprovider.db.deleteScan(id);
     ObtenerScans();
  }

  borrarScansTodos()async{
    await Dbprovider.db.deleteAll();
     ObtenerScans();
  }


}