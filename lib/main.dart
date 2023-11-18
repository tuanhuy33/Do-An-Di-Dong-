import 'package:do_an_di_dong/screen/home_screen.dart';
import 'package:do_an_di_dong/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Heathy Food',
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
