import 'package:flutter/material.dart';

class TableroGameScreen extends StatelessWidget {
  const TableroGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablero Táctico'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.red),
                ),
                Expanded(
                  child: Container(color: Colors.blue),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(color: Colors.green),
          ),
        ],
      ),
    );
  }
}