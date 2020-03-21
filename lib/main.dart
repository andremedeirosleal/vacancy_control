import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home() ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _peaple = 0;
  String _infoText = "Pode entrar!";

  void _changePeaple(int delta){


    setState(() {
      _peaple += delta;
      if(_peaple <0){
        _infoText = "Mundo invertido?";
      }else _infoText = "Pode entrar!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_peaple",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                FlatButton(
                  child: Text("+1",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  onPressed: () {_changePeaple(1);},
                ),
                FlatButton(
                  child: Text("-1",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  onPressed: () {_changePeaple(-1);},
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            )
          ],
        )
      ],
    );
  }
}
