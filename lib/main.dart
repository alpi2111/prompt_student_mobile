import 'package:flutter/material.dart';
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
      },
      initialRoute: 'login',
    );
  }
}
