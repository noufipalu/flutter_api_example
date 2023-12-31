import 'package:datainflutter/src/core/network/api_helper.dart';
import 'package:datainflutter/src/views/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  ApiHelper().initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Item Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}
