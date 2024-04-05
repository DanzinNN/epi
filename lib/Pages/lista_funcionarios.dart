import 'package:flutter/material.dart';

class Lista_Funcionarios extends StatefulWidget {
  const Lista_Funcionarios({Key? key});

  @override
  State<Lista_Funcionarios> createState() => _Lista_FuncionariosState();
}

class _Lista_FuncionariosState extends State<Lista_Funcionarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Remove a sombra da AppBar
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
            onPressed: () {},
            icon: Icon(Icons.person_add_alt, color: Colors.black),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: kToolbarHeight, // Posiciona abaixo da AppBar
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
                      borderSide: BorderSide.none, // Remove a borda
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300, // Cor de fundo do TextField
                    prefixIcon: Icon(Icons.search),
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
