import 'package:flutter/material.dart';

class Lista_Epi extends StatefulWidget {
  const Lista_Epi({Key? key}) : super(key: key);

  @override
  State<Lista_Epi> createState() => _Lista_EpiState();
}

class _Lista_EpiState extends State<Lista_Epi> {
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
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.notifications_none),
          SizedBox(width: 10)
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
                  Navigator.pop(context);
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
