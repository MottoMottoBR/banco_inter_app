import 'dart:developer';

import 'package:bancointerapp/paginas/login_page.dart';
import 'package:bancointerapp/styles/app_cores.dart';
import 'package:bancointerapp/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bancointerapp/utils/validator.dart';

import '../controllers/sign_up_controller.dart';
import '../widget/password_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _controller = SignUpController();
  @override
  Widget build(BuildContext context) {
    const double tamanhoFixo = 10;
    return Scaffold(
      backgroundColor: AppCores.CinzaBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Logo do banco Inter
                  const SizedBox(height: 50),
                  Image.asset(
                    'lib/img/inter_logo.png',
                    width: 300,
                  ),
                  const SizedBox(height: 100),
                  //Nome De Usuario
                  const CustomTextField(
                    hitText: 'Seu Nome',
                    labelText: 'Nome',
                    validator: Validador.validatorNome,
                  ),
                  const SizedBox(height: tamanhoFixo),
                  //Email do usuario
                  const CustomTextField(
                    hitText: 'Seu E-mail',
                    labelText: 'E-mail',
                    validator: Validador.validatorEmail,
                  ),
                  const SizedBox(height: tamanhoFixo),
                  //Campo de Senha
                  PassWordTextField(
                    controller: _passwordController,
                    labelText: 'Senha',
                    hintText: 'Digite uma Senha',
                    validator: Validador.validatorPassword,
                    helperText:
                        'Digite uma senha com no minimo uma letra maiuscula',
                  ),
                  const SizedBox(height: tamanhoFixo),
                  //Repita a senha Digitada
                  PassWordTextField(
                      labelText: 'Confirme a senha',
                      hintText: 'Confirme a senha',
                      validator: (value) => Validador.validatorConfirmPassword(
                          value, _passwordController.text)),
                  const SizedBox(height: tamanhoFixo),
                  //Botao Criar Nova Conta
                  GestureDetector(
                    onTap: () {
                      final valid = _formKey.currentState != null &&
                          _formKey.currentState!.validate();
                      if (valid) {
                        _controller.doSignUp();
                      } else {
                        log('Erro Ao Criar Conta');
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(child: Text('Criar Conta')),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Ja tem conta?'),
                        const SizedBox(width: 3),
                        Text(
                          'Entrar',
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
