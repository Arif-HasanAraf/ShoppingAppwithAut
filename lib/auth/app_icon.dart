import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color BackgroundColor;
  final Color IconColor;
  final double size;
  const AppIcon({Key? key, required this.icon, this.BackgroundColor = Colors.white54, this.IconColor = Colors.black54, this.size = 50,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: BackgroundColor,
      ),
      child: Icon(
        icon,
        color: IconColor,
        size: 25,
      ),
    );
  }
}
