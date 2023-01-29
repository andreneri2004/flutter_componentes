import 'package:flutter/material.dart';
import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                onTap: () {
                  //final route = MaterialPageRoute(builder: (context ) => const ListView1Screen()); // modo mais largo e com mais opções
                  if (menuOption[i].route != 'homescreen') {
                    Navigator.pushNamed(context, menuOption[i].route);
                  }
                },
                title: Text(menuOption[i].name),
                leading: Icon(menuOption[i].icon, color: AppTheme.primary),
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
