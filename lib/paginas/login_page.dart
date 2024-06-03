import 'package:bancointerapp/paginas/register_page.dart';
import 'package:bancointerapp/styles/app_cores.dart';
import 'package:bancointerapp/widget/password_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signUserIn() async {
    //Carregando circular indicador
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset('lib/img/inter_logo.png',
                      width: 200, height: 100),
                  const SizedBox(height: 100),
                  CustomTextField(
                    labelText: 'E-mail',
                    hitText: 'Digite seu E-mail',
                    controller: emailController,
                  ),
                  const SizedBox(height: 20),
                  PassWordTextField(
                    labelText: 'Digite sua Senha',
                    controller: passwordController,
                  ),
                  const SizedBox(height: 100),
                  GestureDetector(
                    onTap: signUserIn,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Entrar',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Nao tem Conta?'),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Registrar-se',
                          style: GoogleFonts.roboto(color: Colors.blue),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
