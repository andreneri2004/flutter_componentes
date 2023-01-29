import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

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
        title: const Text('ListView 2 '),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>  ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
            onTap: (){
              if(options[index] ==  'Janeiro'){
                print('Selecionou Janeiro');
              }
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length
      ),
    );
  }
}
