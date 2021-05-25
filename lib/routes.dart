import 'package:app_prueba/ui/pages/background_color_page.dart';
import 'package:app_prueba/ui/pages/botones_page.dart';
import 'package:app_prueba/ui/pages/menu_page.dart';
import 'package:app_prueba/ui/pages/stack_page.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> rutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => StackPage(),
    'background-color': (BuildContext context) => BackgroundPage(),
    'botones-page': (BuildContext context) => BotonesPage(),
    'menu': (BuildContext context) => MenuPage(),
  };
}
