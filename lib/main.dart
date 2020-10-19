import 'package:flutter/material.dart';

import 'package:prompt_student_mobile/src/utils/theme.dart';

import 'package:prompt_student_mobile/src/pages/register_page.dart';
import 'package:prompt_student_mobile/src/pages/historial_page.dart';
import 'package:prompt_student_mobile/src/pages/home_page.dart';
import 'package:prompt_student_mobile/src/pages/login_page.dart';
//import 'package:prompt_student_mobile/src/providers/database.dart';

void main() {
  //Database db = new Database();
  //print(await db.obtenerRef/erencia());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prompt Student App',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
        'historial': (BuildContext context) => HistorialPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
      initialRoute: 'login',
      /*theme: ThemeData(
        //fontFamily: 'Montserrat',
        //fontFamily: 'Rubik',
        fontFamily: 'Raleway',
        primaryColor: Colors.amber.shade400, //amarillo normal
        primaryColorDark: Color.fromRGBO(199, 154, 0, 1.0), // amarillo dark
        //accentColor: Color.fromRGBO(3, 155, 229, 1.0), //azul normal
        //accentColorBrightness: Color.fromRGBO(0, 109, 179, 1.0),
        //highlightColor: Color.fromRGBO(0, 109, 179, 1.0),

        //dividerColor: Color.fromRGBO(236, 239, 241, 1.0), //gris (para el texto)
        appBarTheme: AppBarTheme(
          brightness: ThemeData.estimateBrightnessForColor(
              Theme.of(context).primaryColor),
          //textTheme: ThemeData.
        ),
        /*textTheme: TextTheme(
          title: TextStyle(color: Colors.white),
          display1: TextStyle(color: Colors.white),
          //body1: TextStyle(color: Colors.white)
        )*/
      ),*/
      theme: themeLight(),
      darkTheme: themeDark(),
      //themeMode: (MediaQuery.of(context).platformBrightness == Brightness.dark) ? ThemeMode.dark : ThemeMode.light,
      //themeMode: ThemeMode.dark,
    );
  }
}
