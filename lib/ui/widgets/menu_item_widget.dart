import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.title,
    required this.leading,
    this.trailing = Icons.chevron_right,
    this.dibujarTrailing = true,
  }) : super(key: key);
  final String title;
  final IconData leading;
  final IconData trailing;
  final bool dibujarTrailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        leading,
        color: Colors.blue,
      ),
      trailing: dibujarTrailing ? Icon(trailing) : Text(''),
      onTap: () {
        print('Click en ListTile');
      },
    );
  }
}
