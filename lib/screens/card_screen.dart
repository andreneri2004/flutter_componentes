import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        children: const [

          Card2(),
          Card2(),
          Card2()
        ],
      ),
    );
  }
}




