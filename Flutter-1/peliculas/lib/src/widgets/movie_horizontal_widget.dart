import 'package:flutter/material.dart';
import 'package:peliculas/src/models/peliculas_models.dart';


class MovieHorizontal extends StatelessWidget {

  final List<Pelicula> peliculas;
  final Function siguentePagina;
  MovieHorizontal({@required this.peliculas,@required this.siguentePagina});

  final _pageController=new PageController(
    initialPage: 1, 
    viewportFraction: 0.3
  );
  @override

  Widget build(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;
  _pageController.addListener((){
    if(_pageController.position.pixels>=_pageController.position.maxScrollExtent-200){
        siguentePagina();
    }
  });
    
    return Container(
      height: _screenSize.height * 0.2,
      child: PageView.builder(
        //pageSnapping: false,
        controller:_pageController,
        //children:_tarjetas(context),
        itemCount: peliculas.length,
        itemBuilder: (BuildContext context,int i)=>_tarjeta(context, peliculas[i])
        
        ),
    );
  }

Widget _tarjeta(BuildContext context, Pelicula pelicula){
   var titulo = pelicula.title.split(" ").toList();
   pelicula.uniqueId = '${pelicula.id}-poster';
   final tarjeta= Container(
      margin: EdgeInsets.only(right:15.0),
      child: Column(
        children: <Widget>[
        Hero(
            tag:pelicula.uniqueId,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child:FadeInImage(
            placeholder:AssetImage('assets/hU4VWmKMZzD0I.gif'), 
            image: NetworkImage(pelicula.getPosterImg()),
            fit: BoxFit.cover,
            height: 130.0 ,

            )
          ),
        ),
          SizedBox(height: 5.0,),
          Text(
            titulo[0].toString(),
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          )
        
      ],
      ),
    );
    return GestureDetector(
      child:tarjeta,
      onTap: (){
          Navigator.pushNamed(context, 'detalle', arguments: pelicula );
      },
      );
}

List<Widget> _tarjetas(BuildContext context){
  return peliculas.map((pelicula){
     var titulo = pelicula.title.split(" ").toList();
    return Container(
      margin: EdgeInsets.only(right:25.0),
      child: Column(children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(17.0),
          child:FadeInImage(
          placeholder:AssetImage('assets/hU4VWmKMZzD0I.gif'), 
          image: NetworkImage(pelicula.getPosterImg()),
          fit: BoxFit.cover,
          height: 145.0 ,

          )
        ),
          // SizedBox(height: 5.0,),
          Text(
            titulo[0].toString(),
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          )
        
      ],
      ),
      
      
    );
  }).toList();
}
}