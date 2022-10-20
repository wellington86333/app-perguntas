import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual a sua cor favorita?"
          "Qual é p seu animal favorito"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 2"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
