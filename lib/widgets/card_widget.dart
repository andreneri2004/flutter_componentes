import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? subtitle;

  const CardWidget(
      {Key? key, required this.title, required this.icon, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: subtitle != null ? Text('$subtitle') : Text(''),
            leading: Icon(
              icon,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
