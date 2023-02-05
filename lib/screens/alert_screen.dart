
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {


  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title:  const Text('Título'),
            content: Column(
              children: const [
                Text('Desenvolvedor Flutter'),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle(color: Colors.red),),
              ),
              TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Cancelar'),
              ),
            ],
          );
        }
    );

  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
       barrierDismissible: false, // serve para não sair quando aperta fora da caixa
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,// para pegar o minimo.
                children: const [
                  Text('Eu sou desenvolvedor:'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100,)
                ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text('Ok'),
              ),
              TextButton(
                onPressed: ()=> Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle(color: Colors.red),),
              ),
            ],
          );
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
