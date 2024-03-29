import 'package:flutter/material.dart';
import "cadastro.dart";

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _showPassword = false;
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("asset/logo.png"),
                  Text("Bem-Vindo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                    
                  ),),
                  Text("Faça login para continuar",
                  style: TextStyle(
                    color: Color(0xC1C1C1C2),
                    fontSize: 10,
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 318,
                    height: 50,
                     child :Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                  ) 
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 318,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          labelText: "Senha",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                            ),               
                            onPressed: (){
                              setState(() {
                                _showPassword = !_showPassword;
                              });

                            }, )
                        ),
                      ),
                    ),
                  ),
                 SizedBox(
                  height: 20,
                 ),
                SizedBox(
                  width: 290,
                  height: 32,
                  child: ElevatedButton(
                  onPressed: (){

                 }, 
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(51, 153, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                 ),
                 child: Text("Entrar",
                 style: TextStyle(
                  fontSize: 14,
                  color: Colors.black
                 ),),
                 ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Não tem uma conta?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => cadastro()),
                    );
                  },
                  child: Text(
                    "Cadastre-se aqui",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
                ],
              )
            ) 
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blueAccent,
              height: 60,
            ))

        ],
      ),
    );
  }
}