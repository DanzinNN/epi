import 'package:flutter/material.dart';
import 'package:epi/Pages/cadastro.dart';

class TelaIdent extends StatefulWidget {
  const TelaIdent({Key? key}) : super(key: key);

  @override
  State<TelaIdent> createState() => _TelaIdentState();
}

class _TelaIdentState extends State<TelaIdent> {
  int? grupoCheckbox; // Variável para o grupo de RadioButtons
  bool isAdmin =
      false; // Variável para controlar se é administrador ou funcionário

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Identificação",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
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
              MaterialPageRoute(builder: (context) => cadastro()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 309,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9), // Cor cinza D9D9D9
                borderRadius:
                    BorderRadius.circular(10), // Raios na borda do Container
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio<int>(
                    value: 1, // Valor para a opção "Administrador"
                    groupValue: grupoCheckbox,
                    onChanged: (value) {
                      setState(() {
                        grupoCheckbox = value;
                        isAdmin = value ==
                            1; // Define isAdmin como true se a opção "Administrador" for selecionada
                      });
                    },
                    activeColor: Colors
                        .blue, // Cor da marca de seleção quando selecionada
                  ),
                  SizedBox(width: 8), // Espaçamento entre o Radio e o texto
                  Text('Administrador'),
                ],
              ),
            ),
            SizedBox(height: 20), // Espaçamento de 20 entre os dois Containers
            Container(
              width: 309,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9), // Cor cinza D9D9D9
                borderRadius:
                    BorderRadius.circular(10), // Raios na borda do Container
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio<int>(
                    value: 2, // Valor para a opção "Funcionário"
                    groupValue: grupoCheckbox,
                    onChanged: (value) {
                      setState(() {
                        grupoCheckbox = value;
                        isAdmin = value ==
                            1; // Define isAdmin como true se a opção "Funcionário" for selecionada
                      });
                    },
                    activeColor: Colors
                        .blue, // Cor da marca de seleção quando selecionada
                  ),
                  SizedBox(width: 8), // Espaçamento entre o Radio e o texto
                  Text('Funcionário'),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (isAdmin) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cadastro()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cadastro()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(318, 32),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
