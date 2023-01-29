import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          Card2(text: 'BI- PHP' , imageUrl: 'https://becode.com.br/wp-content/uploads/2017/09/php-post-1.png'),
          SizedBox(height: 10),
          Card2(text: 'BI- FLUTTER' , imageUrl: 'https://www.alura.com.br/artigos/assets/flutter/o-que-e-flutter.jpg'),
          SizedBox(height: 10),
          Card2( ),
        ],
      ),
    );
  }
}
