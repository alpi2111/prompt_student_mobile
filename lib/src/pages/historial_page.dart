import 'package:flutter/material.dart';

class HistorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Historial',
        ),
      ),
      body: Text('Aqui va el historial de $index'),
    );
  }
}
