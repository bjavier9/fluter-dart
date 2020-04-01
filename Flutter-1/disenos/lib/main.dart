import 'package:disenos/src/pages/basico_flutter.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos',
      initialRoute: 'scroll',
      routes: {
        'basico':(BuildContext context)=>BasicPage(),
        'scroll':(BuildContext context)=>ScrollPage()
      },
      );
      
  }
}