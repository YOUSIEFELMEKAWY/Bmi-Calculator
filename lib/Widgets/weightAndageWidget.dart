import 'package:flutter/material.dart';

class weightAndage_Widget extends StatelessWidget {
  const weightAndage_Widget({
    super.key,
    required this.name,
    required this.num,
    required this.FunctionP,
    required this.FunctionM,
    required this.heroTag1,
    required this.heroTag2,
  });
  final String name;
  final int num;
  final FunctionP;
  final FunctionM;
  final String heroTag1;
  final String heroTag2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '$num',
            style: const TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: heroTag1,
                backgroundColor: Colors.grey,
                mini: true,
                onPressed: FunctionM,
                child: const Icon(Icons.remove, size: 30),
              ),
              FloatingActionButton(
                heroTag: heroTag2,
                backgroundColor: Colors.grey,
                mini: true,
                onPressed: FunctionP,
                child: const Icon(Icons.add, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
