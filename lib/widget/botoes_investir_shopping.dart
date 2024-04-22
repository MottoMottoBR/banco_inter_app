import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BotoesInvertirShopping extends StatefulWidget {
  const BotoesInvertirShopping({super.key});

  @override
  State<BotoesInvertirShopping> createState() => _BotoesInvertirShoppingState();
}

class _BotoesInvertirShoppingState extends State<BotoesInvertirShopping> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pinkAccent),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.shopify,
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        'Oferta',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
          'Investir',
          style: GoogleFonts.aBeeZee(),
        )
      ],
    );
  }
}
