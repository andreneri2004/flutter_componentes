import 'package:flutter/material.dart';

class NoFound extends StatelessWidget {
  const NoFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text('Não encontrado!'),
      ),
    );
  }
}
