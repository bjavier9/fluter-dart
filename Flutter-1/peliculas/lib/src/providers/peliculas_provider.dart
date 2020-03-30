import 'dart:async';
import 'dart:convert';

import 'package:peliculas/src/models/peliculas_models.dart';
import 'package:http/http.dart' as http;
class PeliculaProvider{
  String _apiKey='eb9fb9c41a1612c0d9fde4e9eac8dfc7';
  String _url='api.themoviedb.org';
  String _lenguaje='es-Es';
   int _popularesPage = 0;
   bool _cargando = false;

List<Pelicula> _populares = new List();

final _popularesStreamController =StreamController<List<Pelicula>>.broadcast();

void disposeStreams(){
  _popularesStreamController?.close();
}

Function(List<Pelicula>)get popularesSink => _popularesStreamController.sink.add;

Stream<List<Pelicula>> get popularesStream => _popularesStreamController.stream;




  Future <List<Pelicula>>_procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    
    return peliculas.items;

  }

  Future<List<Pelicula>> getEnCines() async{
    final url = Uri.https(_url,'3/movie/now_playing',{
      'api_key':_apiKey,
      'language':_lenguaje
    });
  return await  _procesarRespuesta(url);
    
  }
  Future<List<Pelicula>> getPopular() async{

  if(_cargando) return[];
    _cargando=true;
    _popularesPage++;

    final url = Uri.https(_url,'3/movie/popular',{
      'api_key'   :_apiKey,
      'language'  :_lenguaje,
      'page'      :_popularesPage.toString()
    });
    final resp = await  _procesarRespuesta(url);
    _populares.addAll(resp);
    popularesSink(_populares);
    _cargando=false;
    return resp;

  }
}