import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaldoAtual extends StatefulWidget {
  const SaldoAtual({super.key});

  @override
  State<SaldoAtual> createState() => _SaldoAtualState();
}

class _SaldoAtualState extends State<SaldoAtual> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        // SizedBox(width: 150,),
        const Icon(Icons.arrow_forward_ios_rounded),
      ],
    );
  }
}
