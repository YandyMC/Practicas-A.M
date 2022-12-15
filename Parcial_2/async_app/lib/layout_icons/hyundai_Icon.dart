import 'dart:async';


import 'package:async_app/services/mockapi.dart';
import 'package:flutter/material.dart';

class Hyundai extends StatefulWidget {
  const Hyundai({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<Hyundai> {
  // Ststatic const String _title = 'Flutter Code Sample';
  double _width = 0;
  int resultado = 0;
  bool _textoActivo = false;
  bool _isExpanded = false;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Ink(
              width: 80,
              height: 80,
              decoration: const ShapeDecoration(
                color: Colors.greenAccent,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.airplanemode_active_rounded,
                  color: Color(0xFF1a7d75),
                  size: 50.0,
                ),
                color: Colors.white,
                onPressed: () async {
                  _toggleExpand();
                  resultado = await MockApi().getHyundaiInteger() as int;
                  refresh();
                  await Future.delayed(Duration(seconds: 3));

                  _textoActivo = true;

                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                  8.0), // add space of 8.0 logical pixels on all sides
              child: Text(""),
            ),
            AnimatedContainer(
              width: _isExpanded ? _width : _width,
              height: 15,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.teal,
                      Colors.greenAccent,
                    ],
                  )
              ),
              duration: Duration(seconds: _isExpanded ? 3 : 0),
            ),
            Padding(
              padding: EdgeInsets.all(
                  5.0),
              child: Text(""),
            ),
            Text(
              '${result().toString()}',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.greenAccent),
            ),
          ],
        ));
  }

  refresh() {
    setState(() {
      _width = 0;
      _isExpanded = false;
    });
  }

  _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      _width = 300;
    });
  }

  result() {
    return resultado;
  }
}
