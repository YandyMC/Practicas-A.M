import 'package:async_app/services/mockapi.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'layout_icons/Ferrari_Icon.dart';
import 'layout_icons/Fisher_Icon.dart';
import 'layout_icons/hyundai_Icon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Icons_async';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white70
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text(_title),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _width = 40;
  double _height = 50;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ListScreen(),
            Hyundai(),
            FisherPrice(),
          ]),
    ));
  }
}
