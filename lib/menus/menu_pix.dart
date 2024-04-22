import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/botoes_pix_boleto_cartoes.dart';

class menuPixEoutros extends StatelessWidget {
  const menuPixEoutros({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //controla o tamanho dos icones de forma rapida
    const double tamanhoFixo = 18;

    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BotoesPixBoleto(
          nomeServico: 'Pix',
          iconeServico: Icon(
            Icons.pix,
            size: tamanhoFixo,
          ),
        ),
        BotoesPixBoleto(
          nomeServico: 'Pagar',
          iconeServico: Icon(
            FontAwesomeIcons.barcode,
            size: tamanhoFixo,
          ),
        ),
        BotoesPixBoleto(
            nomeServico: 'Cartões',
            iconeServico: Icon(
              FontAwesomeIcons.creditCard,
              size: tamanhoFixo,
            ))
      ],
    );
  }
}
