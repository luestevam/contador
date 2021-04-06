import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador",
      //exemplos do widget no flutter https://flutter.dev/docs/development/ui/widgets/layout
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//Minhas váriaveis
  int _unit = 0;
  void _changeUnit(int delta) {
    setState(() {
      _unit += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Unidade: $_unit",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "ADD+",
                        style:
                            TextStyle(fontSize: 30.0, color: Colors.blueAccent),
                      ),
                      onPressed: () {
                        _changeUnit(1);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "LEES-",
                        style:
                            TextStyle(fontSize: 30.0, color: Colors.blueAccent),
                      ),
                      onPressed: () {
                        _changeUnit(-1);
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
