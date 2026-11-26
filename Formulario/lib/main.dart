import 'package:flutter/material.dart';
import 'package:formulario/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sharing opportunities',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2E8B78),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2E8B78),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
