
import 'package:flutter/material.dart';
import 'package:foodpanda_clone/style/style.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback press;
  const ListItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Icon(
        icon,
        color: appColor,
      ),
      title: Text(
        title,
      ),
    );
  }
}
