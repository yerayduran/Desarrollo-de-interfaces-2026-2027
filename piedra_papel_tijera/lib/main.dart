import 'package:flutter/material.dart';
import 'package:piedra_papel_tijera/screens/juego_screen_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Juego',
      home: const JuegoScreenDetails(),
    );
  }
}
