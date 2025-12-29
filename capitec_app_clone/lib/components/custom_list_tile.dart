import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  // final IconData? icon;
  final String? subtitle;
  final Color? color;
  final VoidCallback onTap;
  final String? trailing;
  final bool customTrailing;
  final Color? trailingColor;

  const CustomListTile({
    super.key,
    required this.title,
    // required this.icon,
    this.color,
    required this.onTap,
    this.subtitle,
    this.trailing,
    this.customTrailing = false,
    this.trailingColor,
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
      trailing:
          customTrailing
              ? Text(
                trailing ?? '',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: trailingColor ?? Colors.blue,
                ),
              )
              : const Icon(Icons.arrow_forward_ios, size: 20),
    );
  }
}
