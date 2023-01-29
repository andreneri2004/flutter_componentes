import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ) ,
      elevation: 30,
      shadowColor: AppTheme.primary,
      child: Column(
      children: [
        const FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image:  NetworkImage('https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-scaled.jpg'),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: AlignmentDirectional.center,
          child: Text('BI - Flutter'),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: const Text('Acessar')),
              TextButton(onPressed: (){}, child: const Text('Cancelar'))
            ],
          ),
        )
      ],
      ),
    );
  }
}
