import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BotoesInvertirShopping extends StatelessWidget {
  const BotoesInvertirShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppCores.BrancoCards),
              child: const Center(
                child: Icon(
                  Icons.trending_up_outlined,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Investir',
                  style: GoogleFonts.lexendDeca(
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 87,
              child: Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppCores.BrancoCards),
                    child: const Center(
                      child: Icon(
                        Icons.shopping_bag_outlined,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 6,
                    child: Container(
                      width: 45,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          'Oferta',
                          style: GoogleFonts.lexendDeca(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 11),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    child: Text(
                      'Shopping',
                      style: GoogleFonts.lexendDeca(
                        textStyle: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppCores.BrancoCards),
              child: const Center(
                child: Icon(
                  FontAwesomeIcons.gift,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Gift Card',
                  style: GoogleFonts.lexendDeca(
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppCores.BrancoCards),
              child: const Center(
                child: Icon(
                  Icons.more_horiz,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Mostrar mais',
                  style: GoogleFonts.lexendDeca(
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
