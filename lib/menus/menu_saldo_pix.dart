import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'menu_pix.dart';
import '../components/saldo_atual.dart';
import '../widget/botoes_pix_boleto_cartoes.dart';

class MenuSaldoPix extends StatelessWidget {
  const MenuSaldoPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: AppCores.BrancoCards,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Conta Digital',
              style: GoogleFonts.roboto(
                fontSize: 15,

              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Saldo da Conta Atualmente
            const SaldoAtual(),
            const SizedBox(
              height: 30,
            ),

            //Botões Pix Pagar e Cartões
            const menuPixEoutros(),
          ],
        ),
      ),
    );
  }
}
