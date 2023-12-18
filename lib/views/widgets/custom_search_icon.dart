import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
const CustomIcon({Key? key, required this.icon, }) : super(key: key);
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child:  Icon(
       icon,
        size: 28,
      ),
    );
  }
}
