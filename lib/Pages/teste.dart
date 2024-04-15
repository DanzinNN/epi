import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 72,
                width: 91,
                child: Center(
                  child: Text(
                    "Total de\nfuncionários",
                    style: TextStyle(
                      fontSize: 8,
                      fontFamily: 'Roboto',
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(121, 234, 153, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 72,
                width: 91,
                child: Center(
                  child: Text(
                    "Total de\nfuncionários",
                    style: TextStyle(
                      fontSize: 8,
                      fontFamily: 'Roboto',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 245, 0, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 72,
                width: 91,
                child: Center(
                  child: Text("Total de funcionários"),
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}


// Container(
//   decoration: BoxDecoration(
//     color: Color.fromRGBO(173, 210, 25, 76),
//     borderRadius: BorderRadius.circular(10),
//   ),
//   height: 72,
//   width: 119,
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: EdgeInsets.only(left: 8), // Ajuste o valor conforme necessário
//         child: Text(
//           "0000",
//           style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
//           textAlign: TextAlign.end,
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(left: 8, top: 4), // Ajuste o valor conforme necessário
//         child: Text(
//           "EPIs próximo a data\nde expiração",
//           style: TextStyle(fontSize: 8, fontFamily: 'Roboto'),
//           textAlign: TextAlign.start,
//         ),
//       ),
//     ],
//   ),
// ),
// CASO EU QUEIRA COLOCAR ESPAÇAMENTO ENTRE TEXTO E CONTAINER
