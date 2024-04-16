import 'package:epi/Pages/lista_funcionarios.dart';
import 'package:epi/Pages/perfil_funcionario.dart';
import 'package:flutter/material.dart';
import 'package:epi/Pages/login.dart';
import 'package:epi/Pages/criando_perfil.dart';
import 'package:epi/pages/dashboard.dart';
import 'package:epi/Pages/ident.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EPI",
      home: Perfil_Funcionario(),
    );
  }
}
