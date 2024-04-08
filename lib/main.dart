import 'package:bancointerapp/paginas/my_home_page.dart';
import 'package:bancointerapp/styles/app_cores.dart';
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
      theme: ThemeData(
        primaryColorLight: AppCores.CinzaBackground,
      ),
      home: const MyHomePage(),
    );
  }
}
