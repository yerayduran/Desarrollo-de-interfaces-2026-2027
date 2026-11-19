import 'package:flutter/material.dart';

import 'screens/lonja_list_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lonja de Isla Cristina',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
      ),
      home: LonjaListScreen( )
    );
  }
}


