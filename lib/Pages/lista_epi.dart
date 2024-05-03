import 'package:epi/Pages/cadastro_epi.dart';
import 'package:epi/Pages/home.dart';
import 'package:epi/Pages/notificacoes.dart';
import 'package:flutter/material.dart';

class Lista_Epi extends StatefulWidget {
  const Lista_Epi({Key? key}) : super(key: key);

  @override
  State<Lista_Epi> createState() => _Lista_EpiState();
}

class _Lista_EpiState extends State<Lista_Epi> {
  get showNotificationDot => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
          },
        ),
        actions: [
          Stack( // Utilizando o Stack para sobrepor o ícone de notificação com a bolinha azul
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => notificacoes()));
                  setState(() {
                    var showNotificationDot = false; // Quando o usuário abrir as notificações, a bolinha some
                  });
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
        children: [
          Row(
            children: [
              SizedBox(width: 9),
              IconButton(
                icon: Icon(Icons.add_circle_outline_outlined, color: Colors.blueAccent),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro_Epi()));
                },
              ),
            ],
          ),
              SizedBox(
                width: 330,
                height: 40,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Buscar EPI's",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ),
                  ),
              ),
            ],
      ),
    );
  }
}
