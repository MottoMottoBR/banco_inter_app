import 'package:flutter/material.dart';

import '../styles/app_cores.dart';

class BotoesPixBoleto extends StatefulWidget {
  const BotoesPixBoleto({super.key});

  @override
  State<BotoesPixBoleto> createState() => _BotoesPixBoletoState();
}

class _BotoesPixBoletoState extends State<BotoesPixBoleto> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          height: 50,
          decoration: const BoxDecoration(
            color: AppCores.CinzaBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pix_rounded,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Pix')
            ],
          ),
        )
      ],
    );
  }
}
