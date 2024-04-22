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
                width: 363,
                height: 373,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(height: 10,),
                              Icon(
                                Icons.warning,
                                color: Colors.red,
                              ),
                              SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                              Text(
                                "Relatar algum problema",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 24), // Adicionando espaçamento no topo dos TextField
                            buildTextField('Cargo:'),
                            buildTextField('Departamento'),
                            buildTextField('N° de Identificação'),
                            buildTextField('Tipos de EPIs'),
                            buildTextField('CPF'),
                            buildTextField('N° de Contato'),
                            buildTextField('Data de Nascimento'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica para desativar conta
                },
                icon: Icon(Icons.lock),
                label: Text('Desativar Conta'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.grey,
                ),
              ),
              SizedBox(width: 16), // Espaçamento entre os botões
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica para excluir conta
                },
                icon: Icon(Icons.delete),
                label: Text('Excluir Conta'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
        
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return Container(
      width: 147,
      height: 28,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
        ),
        onChanged: (value) {
          setState(() {
            _cargo = value;
          });
        },
      ),
    );
  }
}
