import 'package:flutter/material.dart';
import 'package:validation/src/bloc/provider.dart';
import 'package:validation/src/pages/home_pages.dart';
import 'package:validation/src/pages/login_pages.dart';
import 'package:validation/src/pages/producto_page.dart';
import 'package:validation/src/pages/registro_page.dart';
import 'package:validation/src/preferencias/preferencias_usuarios.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {  
  
  final prefs = new PreferenciasUsuario();
  print(prefs.token);
    return Provider(
      child: MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(BuildContext context)=>LoginPage(),
        'registro':(BuildContext context)=>RegistroPage(),
        'home': (BuildContext context)=>HomePage(),
        'producto': (BuildContext context)=>ProductoPage()
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
    ) ,
    );
  }
}