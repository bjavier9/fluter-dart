
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final opciones = ['Uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      appBar:AppBar(
        title: Text('Componentes temporales'),
        ),
        body: ListView(
          children:_crearItemsCorta()
        ),
        );
  }
List<Widget> _crearItems(){
  
  List<Widget> lista = new List<Widget>();
  
  for (String item in opciones) {
    final tempWidget=ListTile(
      title: Text(item),
    );
    lista..add(tempWidget)
         ..add(Divider());
  }


  return lista;
}

List<Widget> _crearItemsCorta(){
  var widgets =opciones.map(
    (item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item+'!'),
            subtitle:Text('Hola te huele tu cola'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap:(){

            }
          ),
          Divider()
        ],
      );
    }
  ).toList();

  return widgets;
}

}