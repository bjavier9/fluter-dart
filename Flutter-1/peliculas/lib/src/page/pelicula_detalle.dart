import 'package:flutter/material.dart';
import 'package:peliculas/src/models/peliculas_models.dart';

class PeliculaDetalles extends StatelessWidget {
 
 PeliculaDetalles();
  @override
  Widget build(BuildContext context) {
     final Pelicula pelicula = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body:CustomScrollView(
        slivers: <Widget>[
          _crearAppbar(pelicula),
          SliverList(
            delegate:SliverChildListDelegate(
             [
               SizedBox(height:10.0 ),
              _posterTitulo(context,pelicula)
              ]
            ),
          )
        ],
      )
    );
  }

  Widget _crearAppbar(Pelicula pelicula){
   
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigo,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title:Text(
        pelicula.title,
        style: TextStyle(color:Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          placeholder:AssetImage('assets/loading.gif'),
          image: NetworkImage(pelicula.getBackgroundImg()),
          fadeInDuration: Duration(microseconds: 150),
          fit:BoxFit.cover,
        ),
      ),
    );
  }

Widget _posterTitulo(BuildContext context,  Pelicula pelicula){
  
  return Container(
  padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: <Widget>[
       ClipRRect (
            borderRadius: BorderRadius.circular(20.0),
            child: Image( 
            image: NetworkImage(pelicula.getPosterImg()),
            height: 150.0,
            ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
                Text(pelicula.title, style: Theme.of(context).textTheme.title),
                Text(pelicula.originalTitle)
          ],),
        )
       
      ],
    ),
  );
}

}