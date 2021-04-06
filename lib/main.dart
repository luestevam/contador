import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador",
      home: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //para alinhar com eixo central
        //usei column para colocar os widget em pilha
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              "+1",
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ),
          ),
          Text(
            "Pode Entrar",
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          )
        ],
      )));
}
