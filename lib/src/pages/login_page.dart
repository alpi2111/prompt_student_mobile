import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //Size screenSize;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomPadding: false,
      floatingActionButton: RaisedButton.icon(
        onPressed: () => Navigator.of(context).pushNamed('home'),
        label: Text('Iniciar Sesión'),
        icon: Icon(Icons.input),
        shape: StadiumBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: <Widget>[
          _fondo(screenSize),
          _contenido(screenSize),
         /* Transform.translate(
            child: FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                onPressed: () => Navigator.of(context).pushNamed('home'),
                backgroundColor: Colors.cyan,
                splashColor: Colors.cyanAccent),
           /* offset:
                Offset(-screenSize.width * 0.05, -screenSize.height * 0.395),
          */)*/
        ],
      ),
    );
  }

  Widget _fondo(Size screenSize) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        //fit: StackFit.loose,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Colors.cyanAccent.withOpacity(0.1)),
          ),
          BounceInDown(child: _fondoCirculos(screenSize)),
          BounceInRight(child: _rectAbajo(screenSize)),
        ],
      ),
    );
  }

  Widget _fondoCirculos(Size screenSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _rectArriba(screenSize),
          ],
        ),
      ],
    );
  }

  Widget _rectArriba(Size screenSize) {
    return ClipRRect(
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(500)),
      child: Container(
        color: Colors.blueGrey,
        width: screenSize.width * 0.8,
        height: screenSize.height * 0.25,
      ),
    );
  }

  Widget _rectAbajo(Size screenSize) {
    return RotatedBox(
      quarterTurns: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(500)),
        child: Container(
          color: Colors.cyan,
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.2,
        ),
      ),
    );
  }

  Widget _contenido(Size screenSize) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Iniciar Sesión', style: TextStyle(fontSize: 40)),
          Container(
            padding: EdgeInsets.only(right: 65),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //_formYBoton(),
                SizedBox(height: 40.0),
                Form(
                  child: Container(
                    width: screenSize.width * 0.7,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Usuario',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
