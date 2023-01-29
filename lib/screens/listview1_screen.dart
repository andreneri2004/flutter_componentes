import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const [
    'Janeiro',
    'Fevereiro',
    'Maio',
    'Abril',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (e) => ListTile(
              title: Text(e),
              trailing: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ).toList(),
        ],
      ),
    );
  }
}
