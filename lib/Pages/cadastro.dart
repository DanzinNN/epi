import 'package:flutter/material.dart';
import 'package:epi/Pages/login.dart';
import 'package:epi/Pages/criando_perfil.dart';

class cadastro extends StatefulWidget {
  const cadastro({super.key});

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  bool _showPassword = false;
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Cadastro",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 318,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 318,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    suffixIcon: IconButton(
                      icon: Icon(_showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 318,
              height: 32,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CriandoPerfil()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(51, 153, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Text(
                  "Entrar",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 300,
                  height: 1,
                  color: Colors.grey.shade300,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.white,
                  child: Text(
                    "Ou entre com",
                    style: TextStyle(color: Colors.grey.shade300),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 318,
              height: 32,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "asset/google.png",
                      height: 17,
                      width: 16.67,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Entrar com o Google",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
