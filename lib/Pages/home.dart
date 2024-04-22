import 'package:flutter/material.dart';
import 'package:epi/Pages/adicionar_epi.dart';
import 'package:epi/Pages/perfil_admin.dart';
import 'package:epi/Pages/notificacoes.dart'; // Importe a tela notificacoes.dart

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _HomeState();
}

class _HomeState extends State<home> {
  int _selectedIndex = 0;
  bool hasNotifications = true; // Altere para true ou false conforme necessário

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        // Navegar para a tela Home
        Navigator.push(
          context,
          PageRouteBuilder(transitionDuration: Duration.zero, pageBuilder: (context, animation, secondaryAnimation) {
            return home();
          }),
        );
        break;
      case 1:
        // Navegar para a tela de adicionar EPIs
        Navigator.push(
          context,
          PageRouteBuilder(transitionDuration: Duration.zero, pageBuilder: (context, animation, secondaryAnimation) {
            return adicionar_epi();
          }),
        );
        break;
      case 2:
        // Navegar para a tela do perfil do administrador
        Navigator.push(
          context,
          PageRouteBuilder(transitionDuration: Duration.zero, pageBuilder: (context, animation, secondaryAnimation) {
            return perfil_admin();
          }),
        );
        break;
      default:
        // Se o índice não corresponder a nenhuma tela, não faz nada
        break;
    }
  }

  Widget _buildIcon(IconData icon, int index) {
    final isSelected = index == _selectedIndex;
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
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                filled: true,
                fillColor: Color.fromARGB(217, 217, 217, 217),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              ),
            ),
            SizedBox(height: 46),
            Container(
              height: 56,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(109, 178, 246, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 26),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(121, 234, 153, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Funcionários",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 26),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(51, 153, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "EPIs",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
            ),
          ],
        ),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: _buildIcon(Icons.home, 0),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: _buildIcon(Icons.add, 1),
                onPressed: () => _onItemTapped(1),
              ),
              IconButton(
                icon: _buildIcon(Icons.account_circle, 2),
                onPressed: () => _onItemTapped(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
