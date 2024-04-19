import 'package:epi/Pages/lista_funcionarios.dart';
import 'package:flutter/material.dart';

class Perfil_Funcionario extends StatefulWidget {
  const Perfil_Funcionario({Key? key}) : super(key: key);

  @override
  State<Perfil_Funcionario> createState() => _PerfilFuncionarioState();
}

class _PerfilFuncionarioState extends State<Perfil_Funcionario> {
  String _cargo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Lista_Funcionarios()));
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.blueAccent,
          ),
        ),
        actions: [
          Icon(Icons.notifications_none),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Nome do Funcionário",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: 304,
                height: 363,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "asset/user_circle.png",
                                width: 102,
                                height: 104,
                              ),
                              SizedBox(width: 16), // Adicionando espaçamento entre a imagem e o botão
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Uso de EPI's",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            // Adicione sua lógica de edição aqui
                          },
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        top: 48, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top:88, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 128, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 168, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 208, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 248, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 288, // Ajustando a posição do TextField
                        right: 0,
                        child: Container(
                          width: 147,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cargo',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _cargo = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
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
