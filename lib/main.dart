import 'dart:io';

import 'package:do_an_di_dong/screen/order_detail/order_detail.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyDIQrKLSuoMrZB-0xU8v1o7I6OYpFmMvSM",
            appId: "1:518571498991:android:dc801136d15f5180586a1a",
            messagingSenderId: "518571498991",
            projectId: "heathy-food",
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Heathy Food',
      debugShowCheckedModeBanner: false,
      home: OrderDetailView(),
    );
  }
}
