import 'package:flutter/material.dart';

void main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Text("Olá flutter!!"),
      ),
    );
  }
}
