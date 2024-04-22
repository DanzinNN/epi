import 'package:flutter/material.dart';

class notificacoes extends StatefulWidget {
  const notificacoes({super.key});

  @override
  State<notificacoes> createState() => _notificacoesState();
}

class _notificacoesState extends State<notificacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 30,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.only(left: 37, top: 0), // Reduzi o valor de top para 4
            child: Text(
              "Notificações",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
