import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'botoes_pix_boleto_cartoes.dart';

class MenuSaldoPix extends StatelessWidget {
  const MenuSaldoPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
          color: AppCores.BrancoCards,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Conta Digital',
              style: GoogleFonts.roboto(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Saldo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      r'R$',
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      r'47,50',
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //Botões Pix Pagar e Cartões
            const BotoesPixBoleto(),
          ],
        ),
      ),
    );
  }
}
