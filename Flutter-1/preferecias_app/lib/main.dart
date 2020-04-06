import 'package:flutter/material.dart';
import 'package:preferecias_app/src/pages/home_page.dart';
import 'package:preferecias_app/src/pages/settings_page.dart';
import 'package:preferecias_app/src/share_prefs/preferencias_usuario.dart';

 
void main() async{
 WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

 

}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: 'home',
      routes: {
        HomePage.routeName     : ( BuildContext context ) => HomePage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage(),
      },
    );
  }
}