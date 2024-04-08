import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/logo_topo_menu.dart';
import '../components/menu_contas_br_eua.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Logo Inter e botões do topo Principal
            logoTopoMenu(),

            // Seleção de conta Brasil Ou Global
            MenuConstasBreUa(),

            /*
            // Saldo E Menus Pix.
            // devido a quantidade de botoões e opções
            // todo conteudo sera criado dentro da estrutra abaixo
            // com seus componentes
            // separados
              */

          ],
        ),
      ),
    );
  }
}
