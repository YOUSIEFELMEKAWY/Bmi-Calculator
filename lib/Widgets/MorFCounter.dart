import 'package:flutter/material.dart';

class MorF_Container extends StatelessWidget {
  const MorF_Container({
    super.key,
    required this.gender,
    required this.icon,
    required this.color,
  });

  final String gender;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 100, color: Colors.white),
            Text(
              gender,
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
