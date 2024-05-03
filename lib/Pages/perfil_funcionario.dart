import 'package:flutter/material.dart';
import 'package:epi/Pages/lista_funcionarios.dart';
import 'package:epi/Pages/notificacoes.dart';

class Perfil_Funcionario extends StatefulWidget {
  const Perfil_Funcionario({Key? key}) : super(key: key);

  @override
  State<Perfil_Funcionario> createState() => _PerfilFuncionarioState();
}

class _PerfilFuncionarioState extends State<Perfil_Funcionario> {
  String _cargo = '';
  bool showNotificationDot = true; // Variável para controlar a exibição da bolinha de notificação

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
          Stack( // Utilizando o Stack para sobrepor o ícone de notificação com a bolinha azul
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => notificacoes()));
                },
                icon: Icon(Icons.notifications_none),
              ),
              if (showNotificationDot) // Se showNotificationDot for verdadeiro, mostrar a bolinha azul
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
            ],
          ),
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
                width: 383,
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
                              SizedBox(width: 16), 
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
                              SizedBox(width: 8), 
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
                            SizedBox(height: 24), 
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
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SizedBox(
                          child: ElevatedButton.icon(onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.grey,
                          backgroundColor: Colors.grey.shade200
                        ),
                        label: Icon(Icons.edit)),
                        )
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
              SizedBox(width: 16),
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
