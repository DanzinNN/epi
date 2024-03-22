import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center( 
        child:Column(
        children: [
          Container(
            color: Colors.blueAccent,
            width: 364,
            height: 60,
          ),
          Container(
            width: 364,
            height: 755,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
              )
            ),
          )
        ],
      ),
      )
    );
  }
}