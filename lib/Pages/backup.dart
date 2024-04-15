import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
                    "Total de EPIs",
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
                  child: Text(
                    "Total de EPIs em\nuso",
                    style: TextStyle(fontSize: 8, fontFamily: 'Roboto'),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(114, 185, 250, 76),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 72,
                width: 119,
                child: Center(
                  child: Text(
                    "Total de EPIs em\nmanutenção",
                    style: TextStyle(fontSize: 8, fontFamily: "Roboto"),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(173, 210, 25, 76),
                    borderRadius: BorderRadius.circular(10)),
                height: 72,
                width: 119,
                child: Column(children: [
                  Text(
                    "0000",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "EPIs próximo a data\nde expiração",
                    style: TextStyle(fontSize: 8, fontFamily: 'Roboto'),
                    textAlign: TextAlign.start,
                  ),
                ]),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
