//import 'dart:math';

import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:prompt_student_mobile/src/utils/colors.dart';
import 'package:prompt_student_mobile/src/widgets/all_widgets.dart';

/* class LoginPage extends StatelessWidget {
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
} */

/* class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          //fit: StackFit.passthro,
          children: <Widget>[
            Container(
              width: 100,
              height: 300,
              color: Colors.black,
            ),
            _CirclePositioned(screenSize: _screenSize),
            _CirclePositioned(screenSize: _screenSize),
            _CirclePositioned(screenSize: _screenSize),
          ],
        ),
      ),
    );
  }
}

class _CirclePositioned extends StatelessWidget {
  //final double ubR;
  //final double ubB;
  final Size _screenSize;
  //final double rad;

  const _CirclePositioned({
    @required Size screenSize,
  }): _screenSize = screenSize;
  @override
  Widget build(BuildContext context) {
    final _r = Random();
    final rad = _r.nextInt(280).toDouble();
    final ubR = _r.nextInt(_screenSize.width.toInt() - 50).toDouble();
    final ubB = _r.nextInt(_screenSize.height.toInt() - 100).toDouble();
    return Positioned(
      right: (ubR < 50) ? ubR + 50 : ubR,
      bottom: (ubB > _screenSize.height - 100) ? ubB - 100 : ubB,
      //right: _r.nextInt(_screenSize.width.toInt() - 50).toDouble(),
      //bottom: _r.nextInt(_screenSize.height.toInt() - 100).toDouble(),
      child: CircleWidget(
        rad: (rad < 50) ? rad + 100 : rad,
      ),
    );
  }
}
 */

class LoginPage extends StatelessWidget {
  final _textSize = 20.0;
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tuitulo'),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.ac_unit),
      //   onPressed: () {},
      // ),
      body: Stack(
        //alignment: AlignmentDirectional.center,
        children: <Widget>[
          _BarsTopBottom(size: _size),
          _FirstCircle(size: _size),
          _SecondCircle(size: _size),
          _ThirdCircle(size: _size),
          ElasticInUp(
            delay: Duration(milliseconds: 1500),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _textSize + 10.0),
                  ),
                  SizedBox(height: 30),
                  MaterialButton(
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      width: 300,
                      height: 50,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Iniciar Sesión con Facebook',
                            style: TextStyle(fontSize: _textSize),
                          )
                        ],
                      ),
                    ),
                    color: Color(0xff3B5998),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      width: 300,
                      height: 50,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Iniciar Sesión con Google',
                            style: TextStyle(fontSize: _textSize),
                          )
                        ],
                      ),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
          // CircleWidget(rad: 200, color: secondaryColor,),
          // CircleWidget(rad: 150, color: thirdColor,),
          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Text('Algoooo en normal xd'),
          //     SizedBox(height: 30),
          //     Text(
          //       'Algoooo en bold xd',
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class _BarsTopBottom extends StatelessWidget {
  const _BarsTopBottom({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BounceInLeft(child: _TopWidget(size: _size)),
        BounceInRight(child: _BottomWidget(size: _size)),
      ],
    );
  }
}

class _ThirdCircle extends StatelessWidget {
  const _ThirdCircle({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _size.height * 0.50,
      right: _size.width * 0.15,
      child: FadeIn(
        delay: Duration(milliseconds: 2000),
        child: CircleWidget(rad: 220, color: purpleLight),
      ),
    );
  }
}

class _SecondCircle extends StatelessWidget {
  const _SecondCircle({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _size.height * 0.35,
      right: _size.width * 0.60,
      child: FadeIn(
        delay: Duration(milliseconds: 1800),
        child: CircleWidget(rad: 120, color: roseLight),
      ),
    );
  }
}

class _FirstCircle extends StatelessWidget {
  const _FirstCircle({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _size.height * 0.18,
      right: _size.width * 0.10,
      child: FadeIn(
        delay: Duration(milliseconds: 1600),
        child: CircleWidget(rad: 180, color: cyanLight),
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: _size.width * 0.30),
      child: Container(
        width: _size.width * 0.70,
        height: _size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_size.height * 0.15),
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class _TopWidget extends StatelessWidget {
  const _TopWidget({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size.width * 0.70,
      height: _size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(_size.height * 0.15),
        ),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
