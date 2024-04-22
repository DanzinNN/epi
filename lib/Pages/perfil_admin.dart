import 'package:flutter/material.dart';
import 'package:epi/Pages/login.dart';
import 'package:epi/Pages/home.dart';
import 'package:epi/Pages/adicionar_epi.dart';
import 'package:epi/Pages/info_gerais.dart'; // Importe a tela info_gerais.dart
import 'package:epi/Pages/notificacoes.dart'; // Importe a tela notificacoes.dart

class perfil_admin extends StatefulWidget {
  const perfil_admin({Key? key});

  @override
  State<perfil_admin> createState() => _PerfilAdminState();
}

class _PerfilAdminState extends State<perfil_admin> {
  bool hasNotifications = true; // Altere para true ou false conforme necessário

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => notificacoes()),
                  );
                },
              ),
              if (hasNotifications)
                Positioned(
                  right: 25,
                  bottom: 25,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue, // Cor da bolinha azul
                    ),
                    child: SizedBox(),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Círculo azul com ícone de conta
            SizedBox(
              width: 129,
              height: 129,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3399FF), // Cor do círculo azul
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.account_circle,
                      size: 112,
                      color: Colors.white, // Cor do ícone de conta
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 84,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Cor do círculo do ícone de câmera
                      ),
                      child: Icon(
                        Icons.camera_enhance,
                        size: 20,
                        color: Colors.black, // Cor do ícone de câmera
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Caixa de "Informações Gerais" envolvida em GestureDetector
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => info_gerais()),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(217, 217, 217, 217),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Informações Gerais',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration.zero,
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return login();
                  },
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.exit_to_app, size: 24, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    'Sair da conta',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implementar ação de apagar conta
              },
              child: Row(
                children: [
                  Icon(Icons.delete_forever, size: 24, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    'Apagar conta',
                    style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    final isSelected = index == 2;
    return Container(
      width: 56,
      height: 56,
      child: Transform.translate(
        offset: isSelected ? Offset(0, -4) : Offset.zero,
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? Color(0xFF3399FF) : Colors.white,
          ),
          child: Center(
            child: Icon(
              icon,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: _buildIcon(Icons.home, 0),
            onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration.zero,
                pageBuilder: (context, animation, secondaryAnimation) {
                  return home();
                },
              ),
            ),
          ),
          IconButton(
            icon: _buildIcon(Icons.add, 1),
            onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration.zero,
                pageBuilder: (context, animation, secondaryAnimation) {
                  return adicionar_epi();
                },
              ),
            ),
          ),
          IconButton(
            icon: _buildIcon(Icons.account_circle, 2),
            onPressed: () {}, // Nenhuma ação necessária para o ícone de perfil nesta tela
          ),
        ],
      ),
    );
  }
}
