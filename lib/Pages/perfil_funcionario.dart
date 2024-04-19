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
          color: Colors.grey.shade200,
          padding: EdgeInsets.all(16.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset("asset/user_circle.png"),
          ElevatedButton(
          onPressed: () {
          },
          child: Text(
          "Ver históricos de uso EPIs",
          style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          ),
          ),
          ),
          Container(
          width: 147,
          height: 28,
          child: TextField(
          decoration: InputDecoration(
          hintText: 'Cargo',
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
          ),
          onChanged: (value) {
          setState(() {
            _cargo = value;
          });
          },
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
