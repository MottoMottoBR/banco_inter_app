import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerInvestimento extends StatelessWidget {
  const BannerInvestimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(80),
                topRight: Radius.circular(80),
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 20,
            child: Row(
              children: [
                Container(
                  width: 130,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Oportunidade',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.thumb_up_alt_sharp,
                    color: Colors.deepOrange,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 55,
            left: 10,
            child: Row(
              children: [
                Text(
                  'CDB',
                  style: GoogleFonts.roboto(
                    fontSize: 65,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '112,5',
                  style: GoogleFonts.roboto(
                    fontSize: 65,
                    color: Colors.deepOrange,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '%',
                      style: GoogleFonts.roboto(fontSize: 30),
                    ),
                    Text(
                      'CDI',
                      style: GoogleFonts.roboto(fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 50,
            bottom: 10,
            child: Container(
              width: 90,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepOrange,
              ),
              child: Center(
                  child: Text(
                'Eu quero',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
