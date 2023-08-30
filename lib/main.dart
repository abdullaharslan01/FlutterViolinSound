import 'package:flutter/material.dart';

import 'dumble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dumb(),
      title: "Vionline",
      theme: ThemeData(scaffoldBackgroundColor: Colors.brown.shade900),
    );
  }
}
