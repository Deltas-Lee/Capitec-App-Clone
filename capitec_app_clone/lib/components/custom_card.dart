import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Color? color;
  final Color? iconColor;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    required this.onTap,
    this.iconColor,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                color: color ?? Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
              ),
              alignment: Alignment.center,
              child: Icon(icon, color: iconColor ?? Colors.white, size: 35),
            ),
            Expanded(
              child: Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: color ?? Colors.deepPurpleAccent,
                      ),
                    ),
                    // TODO: subtitle is frequently null or empty, so we could use
                    //a utility method or widget to avoid repeating this pattern.
                    if (subtitle?.isNotEmpty ?? false)
                      Text(
                        subtitle!,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
