import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indice = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Swiper(
          itemCount: 6,
          layout: SwiperLayout.STACK,
          itemWidth: screenSize.width,
          itemHeight: screenSize.height,
          pagination: SwiperPagination(),
          index: _indice,
          onIndexChanged: (i) {
            //print(i);
            setState(() {
              _indice = i;
            });
          },
          itemBuilder: (BuildContext contexto, int index) {
            if (index % 2 == 0) {
              return _crearAvatar(context,
                  nombre: 'Juan Pérez',
                  color: Colors.lightBlue,
                  screenSize: screenSize,
                  urlImage: 'https://i.imgur.com/3Oixaop.jpg',
                  index: index);
            } else {
              return _crearAvatar(context,
                  nombre: 'María Pérez',
                  color: Colors.pinkAccent,
                  screenSize: screenSize,
                  urlImage: 'https://i.redd.it/m7p6izhby3b31.jpg',
                  index: index);
              //return Container(color: Colors.lightBlue);
            }
          },
        ),
      ),
    );
  }

  Widget _crearAvatar(BuildContext context,
      {Size screenSize,
      Color color,
      String nombre,
      String urlImage,
      @required int index}) {
    return Container(
      color: color,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              nombre,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
              maxRadius: screenSize.width * 0.4,
            ),
            Text(
              'está la escuela',
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('historial', arguments: index);
                  },
                  icon: Icon(Icons.history),
                  shape: StadiumBorder(),
                  label: Text('Historial de asistencias'),
                  color: Colors.brown,
                  colorBrightness: Brightness.dark,
                ),
                RaisedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.calendar_today),
                  shape: StadiumBorder(),
                  label: Text('Calificaciones'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
