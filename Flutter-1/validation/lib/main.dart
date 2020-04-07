import 'package:flutter/material.dart';
import 'package:validation/src/bloc/provider.dart';
import 'package:validation/src/pages/home_pages.dart';
import 'package:validation/src/pages/login_pages.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(BuildContext context)=>LoginPage(),
        'home': (BuildContext context)=>HomePage()
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
    ) ,
    );
  }
}