import 'package:flutter/material.dart';
import 'package:exerciciotela/telas/RecuperarSenha.dart';
import 'package:exerciciotela/telas/MenuInicial.dart';
import 'package:exerciciotela/telas/Login.dart';
import 'package:exerciciotela/telas/LandingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Menu(),
    );
  }
}

