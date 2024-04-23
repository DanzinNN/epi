import 'package:epi/Pages/lista_funcionarios.dart';
import 'package:flutter/material.dart';

class Detalhamento_Epi extends StatefulWidget {
  const Detalhamento_Epi({super.key});

  @override
  State<Detalhamento_Epi> createState() => _Detalhamento_EpiState();
}

class _Detalhamento_EpiState extends State<Detalhamento_Epi> {
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
          Padding(padding: const EdgeInsets.all(16),
          child: Text(
            "Detalhes do EPI",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          Expanded(child: Center(
            child: SizedBox(
              width: 393,
              height: 460,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset("asset/capacete.png",
                            width: 114,
                            height: 91,
                            ),
                            Text("Capacete de Proteção com Jugular",
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.black
                            ),
                            ),
                            SizedBox(height: 10,),
                            ElevatedButton(onPressed: (){

                            }, child: Text("Visualizar histórico \n de uso",
                            style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16)
                            )
                            ),
                            SizedBox(height: 10,),
              Icon(
                Icons.warning,
                color: Colors.black,
              ),
              Text("Registrar Manutenção")
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 24),
                          buildTextField("#"),
                          buildTextField("Certificações"),
                          buildTextField("Tamanho"),
                          buildTextField("Fabricação"),
                          buildTextField("Validade"),
                          buildTextField("Estado"),
                          buildTextField("Usuário \n Atual"),
                          buildTextField("Tipo de EPI:"),
                          buildTextField("Obs")
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SizedBox(
                        child: ElevatedButton.icon(onPressed: (){

                        },style: ElevatedButton.styleFrom(
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
          )
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
          });
        },
      ),
    );
  }
}