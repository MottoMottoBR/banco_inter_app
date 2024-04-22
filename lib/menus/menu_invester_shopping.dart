import 'package:flutter/material.dart';

import '../widget/botoes_investir_shopping.dart';

class MenuInvestirShopping extends StatelessWidget {
  const MenuInvestirShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BotoesInvertirShopping(),
      ],
    );
  }
}
