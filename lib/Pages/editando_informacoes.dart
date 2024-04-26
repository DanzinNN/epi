import 'package:flutter/material.dart';

class Editando_Informacoes extends StatefulWidget {
  const Editando_Informacoes({Key? key}) : super(key: key);

  @override
  State<Editando_Informacoes> createState() => _Editando_InformacoesState();
}

class _Editando_InformacoesState extends State<Editando_Informacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            // Adicione a navegação de volta aqui
          },
          icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.blueAccent),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Nome Completo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "CPF",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "Data de Nascimento",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Número de Contato",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Número de Identificação",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Cargo/função",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Setor/Departamento Responsável",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 318,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Empresa",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          SizedBox(
            width: 123,
            height: 25,
            child: Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
              },
              backgroundColor: Colors.blueAccent,
              child: Text("Editar Informações",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),),
            ),
          ),
          )
        ],
      ),
    );
  }
}
