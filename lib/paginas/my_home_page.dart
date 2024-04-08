import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/logo_topo_menu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Logo Inter e botões do top Principal
            logoTopoMenu()
          ],
        ),
      ),
    );
  }
}
