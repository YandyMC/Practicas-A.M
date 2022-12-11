

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Buttons')),
        body: const MyHomePage(title: 'Async flutter'),
      ),
    );
  }
}

int _count = 0;
int _count2 = 0;
int _count3 = 0;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Expanded(
              child: Column(
          )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
              IconButton(
              iconSize: 60.0,
                icon: const Icon(
                Icons.add_box,
                color: Colors.pink,
                  size: 54.0,
                 semanticLabel: 'Text to announce in accessibility modes',
                ), onPressed: () {
                    setState(() {
                    _count += 1;
                  });
              },),
              Text('$_count'),
             ],
         )
          ),
          Expanded(
            flex: 2,
            child: Align(
            alignment: Alignment.center,
                child: Column(
                  children: [
                    IconButton(
                      iconSize: 60.0,
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.greenAccent,
                        size: 54.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ), onPressed: () {
                      setState(() {
                        _count2 += 1;
                      });
                    },),
                    Text('$_count2'),
                  ],
                )),
            ),
          Expanded(
            flex: 2,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    IconButton(
                      iconSize: 60.0,
                      icon: const Icon(
                        Icons.add_alert,
                        color: Colors.teal,
                        size: 54.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ), onPressed: () {
                      setState(() {
                        _count3 += 1;
                      });
                    },),
                    Text('$_count3'),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

