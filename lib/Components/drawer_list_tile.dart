import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final Icon icon;
  final String subtitle;
  final void Function()? onTap;

  const DrawerListTile(
      {super.key,
      required this.icon,
      required this.subtitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subtitle,
          style: TextStyle(fontSize: 14),
        ),
      ),
      onTap: onTap,
    );
  }
}
