import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  // final IconData? icon;
  final String? subtitle;
  final Color? color;
  final VoidCallback onTap;

  const CustomListTile({
    super.key,
    required this.title,
    // required this.icon,
    this.color,
    required this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Icon(icon, color: color ?? Colors.blue[600], size: 30),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, color: color ?? Colors.black54),
      ),
      subtitle:
          subtitle != null
              ? Text(
                subtitle!,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              )
              : null,
      onTap: onTap,
      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
    );
  }
}
