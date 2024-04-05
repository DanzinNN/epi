import 'package:flutter/material.dart';

class _Dashboard extends StatefulWidget {
  const _Dashboard({super.key});

  @override
  State<_Dashboard> createState() => __Dashboard();
}

class __Dashboard extends State<_Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: "Dashboard",
        style: TextStyle(
          Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        )
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            icons,arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ),
            );
          },
        ),
      ),
      body: Container(
        
      )






    );
  }
}