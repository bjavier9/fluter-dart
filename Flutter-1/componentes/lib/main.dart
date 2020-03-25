import 'package:componentes/src/pages/alerts_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
//import 'package:componentes/src/home_temp.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoute(),
      onGenerateRoute: (settings){
        print('ruta de ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context)=>AlertPage());
      },
      
    );
  }
}