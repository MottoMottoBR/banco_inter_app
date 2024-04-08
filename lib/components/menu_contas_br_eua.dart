import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/app_cores.dart';

class MenuConstasBreUa extends StatefulWidget {
  const MenuConstasBreUa({
    super.key,
  });

  @override
  State<MenuConstasBreUa> createState() => _MenuConstasBreUaState();
}

class _MenuConstasBreUaState extends State<MenuConstasBreUa> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Conta Nascional
        Container(
          height: 45,
          width: 100,
          decoration: const BoxDecoration(
            color: AppCores.BrancoCards,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'lib/img/flagBrazil.png',
                  height: 20,
                  width: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Brasil',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        //Conta Global
        Container(
          height: 45,
          width: 100,
          decoration: const BoxDecoration(
            color: AppCores.BrancoCards,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const Icon(
                  Icons.public, color: Colors.blue,
                  // Image.asset(
                  //   'lib/img/flagWorld.png',
                  //   height: 20,
                  //   width: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Global',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
