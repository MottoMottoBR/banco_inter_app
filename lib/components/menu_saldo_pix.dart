import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
