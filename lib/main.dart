import 'package:epi/Pages/lista_funcionarios.dart';
import 'package:flutter/material.dart';
import 'package:epi/Pages/login.dart';
import 'package:epi/Pages/criando_perfil.dart';
import 'package:epi/pages/dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EPI",
<<<<<<< HEAD
      home: Lista_Funcionarios(),
=======
      home: _Dashboard(),
>>>>>>> 0f10e3387c57eae52a006b8e117929ac68332385
    );
  }
}                          