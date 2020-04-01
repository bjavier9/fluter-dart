import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estilosubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              
        _crearImagen(),
        _crearTarjeta(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto()

      
            ],),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
          child: Image(
        image: NetworkImage(
            'https://1.bp.blogspot.com/-ijzeaTW_kHA/XTkvwkUM7EI/AAAAAAABu7g/sPhK73D6mM0czHdKnkMB09Q-BoZVyFa1gCLcBGAs/w1200-h630-p-k-no-nu/mia-khalifa.jpg'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTarjeta() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puentesito',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'is simply dummy text of the printing.',
                    style: estilosubTitulo,
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
_action(Icons.call,'Call'),
_action(Icons.near_me,'Route'),
_action(Icons.share,'Share'),
       
        
      ]
    );
  }

  Widget _action(IconData icon, String texto){

    return  Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue,size: 40.0),
            SizedBox(height: 5.0,),
            Text(texto,style:TextStyle(fontSize: 15.0, color:Colors.blue) )
            
            ]);
  }


  Widget _crearTexto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Magna ut duis voluptate ut nostrud amet dolor qui quis dolor ea. Exercitation labore cillum id duis duis culpa ut. Cillum et aliqua reprehenderit deserunt anim qui velit non duis officia minim aliquip. Laborum sunt aliquip reprehenderit irure. Do irure consequat ipsum occaecat dolore duis proident do voluptate minim laborum nulla. Ullamco eiusmod cillum duis est tempor est ullamco ad pariatur occaecat ipsum nostrud. Tempor ex nisi eiusmod laboris fugiat amet ea eiusmod esse dolore non.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }
}
