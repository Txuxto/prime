import 'package:flutter/material.dart';

main() => runApp(Perguntas());

class Perguntas extends StatelessWidget {
  void responder() {
    print('pergunta respondida');
  }

  void Function() funcaoQueRetornaFuncao() {
    return () {
      print('pergunta respondida #2');
    };
  }

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
          //ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
          //teve se usar responder e nao responder(), pois está se passando uma função e não chamando ela.
          ElevatedButton(
              onPressed: funcaoQueRetornaFuncao, child: Text('Resposta 2')),
          ElevatedButton(
              onPressed: funcaoQueRetornaFuncao, child: Text('Resposta 3')),
          ElevatedButton(
              onPressed: funcaoQueRetornaFuncao, child: Text('Resposta 4')),
        ],
      ),
    ));
  }
}
