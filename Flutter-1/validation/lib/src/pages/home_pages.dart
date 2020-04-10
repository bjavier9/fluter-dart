
import 'package:flutter/material.dart';
import 'package:validation/src/bloc/provider.dart';
import 'package:validation/src/models/producto_models.dart';
import 'package:validation/src/providers/producto_provider.dart';

class HomePage extends StatelessWidget {
final productoProvider = new ProductoProvider();
  @override
  Widget build(BuildContext context) {
  
   final bloc =Provider.of(context);
    


    return Scaffold(
      appBar: AppBar(
        title: Text('Home')
      ),
      body:_crearListado(),
      floatingActionButton: _crearBoton(context),
    );
  }
  Widget _crearListado(){
    return FutureBuilder(
      future: productoProvider.cargarProductos(),
      
      builder: (BuildContext context, AsyncSnapshot<List<ProductoModel>> snapshot) {
        if(snapshot.hasData){
          final productos = snapshot.data;
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, i)=>_crearItem(context,productos[i]),
          );
        }else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
  Widget _crearItem(BuildContext context,ProductoModel producto){

    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: ( direccion ){
        productoProvider.borrarProducto(producto.id);
      },
      child: Card(
         elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
        child: Column(
          children: <Widget>[
        Row(
          children: <Widget>[
            
          SafeArea(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(producto.id , style: TextStyle(fontWeight: FontWeight.bold),),
                 Text(producto.disponible.toString())
                ],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () =>null,
            )
          ],
        ),
            ( producto.fotoUrl == null ) 
              ? Image(image: AssetImage('assets/images.png'))
              : FadeInImage(
                image: NetworkImage( producto.fotoUrl ),
                placeholder: AssetImage('assets/carga.gif'),
                height: 300.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            
            ListTile(
              title: Text('${ producto.titulo } - ${ producto.valor }'),
              subtitle: Text( producto.id ),
              onTap: (){Navigator.pushNamed(context, 'producto', arguments: producto );
                  print('presionastez');
              } ,
            ),
  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              padding: EdgeInsets.zero,
              iconSize: 28.0,
              icon: Icon(Icons.delete),
              onPressed:(){},
            ),
            IconButton(
              padding: EdgeInsets.zero,
              iconSize: 28.0,
              icon: Icon(Icons.edit),
              onPressed:(){},
            ),
            Spacer()])
          ],
        ),
      )
    );
  }

  _crearBoton(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.deepPurple,
      onPressed: ()=>Navigator.pushNamed(context,'producto'),
    );
  }
}