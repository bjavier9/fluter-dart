import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:validation/src/models/producto_models.dart';
import 'package:validation/src/providers/producto_provider.dart';
import 'package:validation/src/utils/utils.dart' as utils;

class ProductoPage extends StatefulWidget {
  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final productoProvider = new ProductoProvider();

  ProductoModel producto = new ProductoModel();
  bool _guardado = false;
  File foto;

  @override
  Widget build(BuildContext context) {
    final ProductoModel prodData = ModalRoute.of(context).settings.arguments;
    if (prodData != null) {
      producto = prodData;
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Producto'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_size_select_actual),
            onPressed: _seleccionarFoto,
          ),
          IconButton(icon: Icon(Icons.camera_alt), onPressed: _tomarFoto),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                _mostrarFoto(),
                _crearNombre(),
                _crearPrecio(),
                _crearDisponible(),
                _crearBoton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearNombre() {
    return TextFormField(
      initialValue: producto.titulo,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Producto'),
      onSaved: (value) =>
          producto.titulo = '${value[0].toUpperCase()}${value.substring(1)}',
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese el nombre del producto';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearPrecio() {
    return TextFormField(
      initialValue: producto.valor.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(labelText: 'Precio'),
      onSaved: (value) => producto.valor = double.parse(value),
      validator: (value) {
        if (utils.isNumeric(value)) {
          return null;
        } else {
          return 'Sólo números';
        }
      },
    );
  }

  Widget _crearDisponible() {
    return SwitchListTile(
      value: producto.disponible,
      title: Text('Disponible'),
      activeColor: Colors.deepPurple,
      onChanged: (value) => setState(() {
        producto.disponible = value;
      }),
    );
  }

  Widget _crearBoton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Colors.deepPurple,
      textColor: Colors.white,
      label: Text('Guardar'),
      icon: Icon(Icons.save),
      onPressed: (_guardado) ? null : _submit,
    );
  }

  void _submit() async {
    if (!formKey.currentState.validate()) return;

    formKey.currentState.save();
    _guardado = true;

    setState(() {});
    if(foto !=null){
      producto.fotoUrl = await productoProvider.subirImagen(foto);
    }
    if (producto.id == null) {
      productoProvider.crearProducto(producto);
    } else {
      productoProvider.editarProducto(producto);
    }
    setState(() {
      _guardado = false;
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pop(context);
    });
    mostrarSnackbar('Registro Guardado');
  }

  void mostrarSnackbar(String mensaje) {
    final snackbar = SnackBar(
      backgroundColor: Color.fromRGBO(107, 244, 97, 0),
      content: Text(mensaje),
      duration: Duration(milliseconds: 1500),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  _mostrarFoto() {

 
    if (producto.fotoUrl != null) {
       return FadeInImage(
        image: NetworkImage( producto.fotoUrl ),
        placeholder: AssetImage('assets/carga.gif'),
        height: 300.0,
        fit: BoxFit.contain,
      );
    } else {
      return Column(
        children: <Widget>[
          Image(
            image: AssetImage(foto?.path ?? 'assets/images.png'),
            height: 300,
            fit: BoxFit.cover,
          ),
          MaterialButton(
            color: Colors.redAccent,
            textColor: Colors.white,
            child: Icon(Icons.remove_circle_outline),
            padding: EdgeInsets.all(16),
            shape: CircleBorder(),
            onPressed: () {              
              setState(() {
                foto=null;
              });
            },
          ),
        ],
      );
    }
  }

  _seleccionarFoto() async {
     _procesarImagen(ImageSource.gallery);
  }

  _tomarFoto()async {
    _procesarImagen(ImageSource.camera);
   
  }

  _procesarImagen( ImageSource tipo) async{
      foto =await ImagePicker.pickImage(
      source: tipo
    );
    if (foto != null) {
        producto.fotoUrl = null;
    }
    setState(() {});
  }
}
