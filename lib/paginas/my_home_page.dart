import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Logo Inter e botões do top Principal
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'lib/img/inter_logo.jpg',
                  width: 120,
                  height: 120,
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(Icons.visibility_outlined),
                      Icon(Icons.search),
                      Icon(Icons.person),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
