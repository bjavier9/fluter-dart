import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider=100.0;
  bool _bloquearcheck =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Slider')
        ) ,
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(
                
                child:  _crearImagen()
              )
             
          ],),
        ),
    );
  }

Widget _crearSwitch(){
 return SwitchListTile(
       value: _bloquearcheck,
       title: Text('Bloquear slider'),
      onChanged: (valor){
        setState(() {
          _bloquearcheck=valor;
        });
      }
      );       
}
  Widget _checkBox(){
    // return Checkbox(
    //   value: _bloquearcheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearcheck=valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
       value: _bloquearcheck,
       title: Text('Bloquear slider'),
      onChanged: (valor){
        setState(() {
          _bloquearcheck=valor;
        });
      },
    );
  }
  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la imagen',
      // divisions: 20,
      value:_valorSlider,
      min:10.0,
      max:400.0,
      onChanged:(_bloquearcheck)?null:(valor ){
        setState(() {
          _valorSlider=valor;
        });
        
        
      } ,
      
      );
  }

  Widget _crearImagen(){
    return 
        FadeInImage(
          placeholder: AssetImage('assets/progress.gif'),
          image: NetworkImage('https://media.metrolatam.com/2020/03/08/miakhalifapublin-fb23f5b0976cb1c6144007f804a0748b-1200x800.jpg'),
          width: _valorSlider,
          fit:BoxFit.contain
    );
  }
}