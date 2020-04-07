

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:validation/src/models/producto_models.dart';

class ProductoProvider{

  final String _url = 'https://flutter-varios-fde23.firebaseio.com';

  Future<bool> CrearProducto(ProductoModel producto) async{
    final url = '$_url/producto,json';
    final resp = await http.post(url, body:productoModelToJson(producto));
    final decodeDaa = json.decode(resp.body);
  }

}