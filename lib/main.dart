import 'package:epi/Pages/cadastro_epi.dart';
import 'package:epi/Pages/detalhamento_epi.dart';
import 'package:epi/Pages/editando_informacoes.dart';
import 'package:epi/Pages/lista_epi.dart';
import 'package:epi/Pages/lista_funcionarios.dart';
import 'package:epi/Pages/perfil_funcionario.dart';
import 'package:flutter/material.dart';
import 'package:epi/Pages/login.dart';
import 'package:epi/Pages/criando_perfil.dart';
import 'package:epi/pages/dashboard.dart';
import 'package:epi/Pages/ident.dart';
import 'package:epi/Pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EPI",
      home: home(),
    );
  }
}
