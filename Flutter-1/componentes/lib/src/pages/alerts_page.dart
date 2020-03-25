import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:
       Text('Alert page'),
       ),
       body: Center(
         child:RaisedButton(
           child: Text('Mostrar alerta'),
           color: Colors.indigo,
           textColor: Colors.white,
           shape: StadiumBorder(),
           onPressed: ()=>_mostrarAlerta(context),

         ) ,
         
         ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.rate_review),
         onPressed: (){
           Navigator.pop(context);
         },
       ),
       );
  }

void _mostrarAlerta(BuildContext context){

showDialog(
context:context,
barrierDismissible: true,
builder:(context){
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    title: Text('Titulo'),
    content:Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Qhora son el unico pais seguro en el mundo, vengan los inversores'),
        FlutterLogo(size: 100.0,)
      ],
    
    ),
    actions: <Widget>[
      FlatButton(
        child: Text('Cancelar'),
        onPressed: ()=>Navigator.of(context).pop(),
        
        ),
         FlatButton(
        child: Text('Ok'),
        onPressed: ()=>Navigator.of(context).pop(),
        
        )
    ],
  );
}

);

}

}