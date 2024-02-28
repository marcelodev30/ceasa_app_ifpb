import 'package:ceasa_app_v1/pages/page1.dart';
import 'package:flutter/material.dart';

//import 'pages/sign.in.page.dart';

//import 'pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page01(),
    );
  }
}
