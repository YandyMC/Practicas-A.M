import 'dart:async';

import 'package:async_app/services/mockapi.dart';
import 'package:flutter/material.dart';

class FisherPrice extends StatefulWidget {
  const FisherPrice({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<FisherPrice> {
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
                color: Colors.redAccent,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.accessible_forward_sharp,
                  color: Color(0xFF7d1a38),
                  size: 50.0,
                ),
                color: Colors.white,
                onPressed: () async {
                  _toggleExpand();
                  resultado = await MockApi().getFisherPriceInteger() as int;
                  refresh();
                  await Future.delayed(Duration(seconds: 10));

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
                      Color(0xFF7d1a38),
                      Colors.redAccent,
                    ],
                  )
              ),
              duration: Duration(seconds: _isExpanded ? 10 : 0),

            ),
            Padding(
              padding: EdgeInsets.all(
                  5.0), // add space of 8.0 logical pixels on all sides
              child: Text(""),
            ),
            Text(
              '${result().toString()}',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.redAccent),
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
