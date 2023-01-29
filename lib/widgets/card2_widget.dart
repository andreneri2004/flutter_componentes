import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {

  final String?  text;
  final String?  imageUrl;

  const Card2({Key? key, this.text,   this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ) ,
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
      children: [
        FadeInImage(
          placeholder: const  AssetImage('assets/images/jar-loading.gif'),
          image:  NetworkImage(imageUrl ?? 'https://abravidro.org.br/wp-content/uploads/2015/04/sem-imagem12.jpg'),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),

        if(text != null)
        Container(
          padding: const EdgeInsets.all(10),
          alignment: AlignmentDirectional.center,
          child:  Text(text ?? 'Sem Título') ,
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
