import 'package:bancointerapp/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double tamanhoFixoIcons = 25;
    return Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Logo Inter e botões do top Principal
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'lib/img/inter_logo.png',
                  width: 120,
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.visibility_outlined,
                          size: tamanhoFixoIcons,
                          color: AppCores.CinzaBotaoUser,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.search,
                          size: tamanhoFixoIcons,
                          color: AppCores.CinzaBotaoUser,
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: AppCores.CinzaBotaoUser,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 25,
                          color: AppCores.BrancoCards,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
