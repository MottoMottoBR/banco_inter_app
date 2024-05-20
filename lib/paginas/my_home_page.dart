import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/banner_investimento.dart';
import '../components/logo_topo_menu.dart';
import '../menus/menu_contas_br_eua.dart';
import '../menus/menu_saldo_pix.dart';

import '../widget/botoes_investir_shopping.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Logo Inter e botões do topo Principal
              logoTopoMenu(),

              // Seleção de conta Brasil / Global
              MenuConstasBreUa(),

              SizedBox(height: 15),

              // Saldo E Menus Pix.
              MenuSaldoPix(),

              SizedBox(height: 15),
              //Menu Investir , Sopping e outros
              BotoesInvertirShopping(),

              SizedBox(height: 30),

              //Banner de investimento
              BannerInvestimento(),
            ],
          ),
        ),
      ),
    );
  }
}
