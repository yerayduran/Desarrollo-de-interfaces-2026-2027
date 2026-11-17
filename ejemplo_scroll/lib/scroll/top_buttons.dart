import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  final VoidCallback up;
  final VoidCallback down;
  final String currentOffset;

  const TopButtons(this.up, this.down, this.currentOffset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          alignment: Alignment.centerLeft,
          child: TextButton(
            child: const Text('DOWN'),
            onPressed: down, // Llamada directa a la función
          ),
        ),
        Text(
          currentOffset,
          textAlign: TextAlign.center,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text('UP'),
            onPressed: up,
          ),
        ),
      ],
    );
  }
}