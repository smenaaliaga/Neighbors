import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

// Forma de crear StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0;
    final TextStyle textStyle = new TextStyle(color: Colors.grey, fontSize: 20.0);
    // Scafold da un esquema basico a la app
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Solar Social Network")
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                  title: new Text("Hola Mundo", style: textStyle),
                  icon: new Icon(Icons.ac_unit,
                      size: iconSize,
                      color: Colors.lightBlueAccent)),
              new MyCard(
                  title: new Text("Tarjeta de Discapacitado", style: textStyle),
                  icon: new Icon(Icons.accessible_forward,
                      size: iconSize,
                      color: Colors.green)),
              new MyCard(
                  title: new Text("Criogenizado, la mea vola", style: textStyle),
                  icon: new Icon(Icons.airline_seat_flat_angled,
                      size: iconSize, color:
                      Colors.redAccent)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {

  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
              children: <Widget>[this.title, this.icon]
          ),
        ),
      ),
    );
  }
}