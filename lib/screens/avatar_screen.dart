import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 5),
              child:  CircleAvatar(
                child: const Text('AV'),
                backgroundColor: Colors.indigo[900],
              )
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110.0,
          backgroundImage: NetworkImage('https://www.manchesterdigital.com/storage/13254/flutter-3.png'),
        ),
      ),
    );
  }
}
