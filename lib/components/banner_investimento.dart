import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BannerInvestimento extends StatelessWidget {
  const BannerInvestimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(15)),
        child: Stack(

          children: [
            Positioned(

              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: AppCores.CinzaBotaoUser,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
