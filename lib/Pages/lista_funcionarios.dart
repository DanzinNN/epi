import 'package:epi/Pages/perfil_funcionario.dart';
import 'package:flutter/material.dart';

class Lista_Funcionarios extends StatefulWidget {
  const Lista_Funcionarios({Key? key});

  @override
  State<Lista_Funcionarios> createState() => _ListaFuncionariosState();
}

class _ListaFuncionariosState extends State<Lista_Funcionarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Funcionários",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.blueAccent,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: 
              (context) => Perfil_Funcionario()));
            },
            icon: Icon(Icons.person_add_alt, color: Colors.black),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: kToolbarHeight,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 48,
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Buscar",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    suffixIcon: IconButton(
                      onPressed: () {
                      },
                      icon: Icon(Icons.search),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
