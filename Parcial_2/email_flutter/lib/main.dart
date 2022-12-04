import 'package:flutter/material.dart';
import 'styles.dart';
import 'screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmailList',
      theme: ThemeData(
        primarySwatch: background,
        canvasColor: fond,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ListScreen(title: 'Flutter Email'),
    );
  }
}
