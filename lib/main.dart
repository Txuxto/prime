import 'package:flutter/material.dart';

main() => runApp(Perguntas());

class Perguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é sua cor favorita',
      'Qual é seu animal favorito',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          //Text(perguntas.elementAt(0)),
          Text(perguntas[0]),
          ElevatedButton(onPressed: null, child: Text('Resposta 1')),
          ElevatedButton(onPressed: null, child: Text('Resposta 2')),
          ElevatedButton(onPressed: null, child: Text('Resposta 3')),
          ElevatedButton(onPressed: null, child: Text('Resposta 4')),
        ],
      ),
    ));
  }
}
