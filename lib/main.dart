import 'package:bancointerapp/paginas/auth_page.dart';
import 'package:bancointerapp/paginas/login_page.dart';
import 'package:bancointerapp/paginas/my_home_page.dart';
import 'package:bancointerapp/paginas/register_page.dart';
import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorLight: AppCores.CinzaBackground,
      ),
      home: const RegisterPage(),
    );
  }
}
