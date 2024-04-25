import 'package:flutter/material.dart';

import '../styles/app_cores.dart';

class BotoesPixBoleto extends StatefulWidget {
  final String nomeServico;
  final Icon iconeServico;
  const BotoesPixBoleto(
      {super.key, required this.nomeServico, required this.iconeServico});

  @override
  State<BotoesPixBoleto> createState() => _BotoesPixBoletoState();
}

class _BotoesPixBoletoState extends State<BotoesPixBoleto> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 95,
          height: 45,
          decoration: const BoxDecoration(
            color: AppCores.CinzaBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Iconde do servidor
              widget.iconeServico,
              const SizedBox(
                width: 12,
              ),
              Text(widget.nomeServico)
            ],
          ),
        )
      ],
    );
  }
}
