import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_cores.dart';

class logoTopoMenu extends StatelessWidget {
  const logoTopoMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const double tamanhoFixoIcons = 25;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'lib/img/inter_logo.png',
          width: 110,
          height: 110,
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
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 200,
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  });

                              FirebaseAuth.instance.signOut();
                              Navigator.of(context).pop();
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Deslogar'),
                                SizedBox(width: 5),
                                Icon(Icons.logout_sharp),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Icon(
                    Icons.person,
                    size: tamanhoFixoIcons,
                    color: AppCores.BrancoCards,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
