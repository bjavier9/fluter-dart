import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }

Widget _cardTipo2(){

  final card= Container(
    // clipBehavior: Clip.antiAlias,
    child: Column(
      children: <Widget>[

        FadeInImage(
          placeholder: AssetImage('assets/progress.gif'),
          image: AssetImage('assets/montanas-nevadas-3300.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        // Image(
        //   image: NetworkImage('https://www.wallpaperup.com/uploads/wallpapers/2012/05/12/2757/51188595b48737efbe28ef79c0609400.jpg'),
        // ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Making real HTTP requests in tests is problematic.'),
        )
      ],
    ),
  );
  return Container(
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)

          )
      ],
      color: Colors.white,
    ),
    child:ClipRRect(
    
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
    );
}





  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
      child:Column(
        children: <Widget>[
          ListTile(
            title: Text('Soy el titulo chido'),
            subtitle: Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
            leading:Icon(Icons.photo_album,color:Colors.indigo) ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              FlatButton(child: Text('Cancelar'),
              onPressed: (){},
              ),
              FlatButton(child: Text('Ok'),
              onPressed: (){},
              )
            ],)
        ],
      ),
      );
  }



}