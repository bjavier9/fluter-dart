import 'package:flutter/material.dart';
import 'package:qreaderapp/src/pages/home_pages.dart';
import 'package:qreaderapp/src/pages/mapa_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QReader',
     initialRoute: 'home',
     routes: {
       'home':(BuildContext context)=>HomePage(),
       'mapa':(BuildContext context)=>MapaPage()
     },
     theme: ThemeData(
       primaryColor: Colors.deepPurple
     ),
    );
  }
}