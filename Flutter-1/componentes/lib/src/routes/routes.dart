import 'package:componentes/src/pages/alerts_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_pages.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoute() {
  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'card'    : (BuildContext context) => CardPage()
  };
}
