import 'package:flutter/material.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Heathy Food',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      ),
  }
}
