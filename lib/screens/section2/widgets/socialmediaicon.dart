import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  SocialMediaIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
