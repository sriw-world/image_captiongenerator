import 'package:flutter/material.dart';
import 'package:captions_generator_test/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Captions Generator",
      debugShowCheckedModeBanner: false,
      home: SplashPage( ),
    );
  }
}
