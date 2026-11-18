import 'package:flutter/material.dart';
import 'package:solar_system/screens/planet_detail_screen.dart';
import 'package:solar_system/screens/planets_list_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema Solar',
      initialRoute: '/',
      routes: {
        '/': (context) => const PlanetsListScreen(),
        PlanetDetailScreen.routeName: (context) => const PlanetDetailScreen(),
      },
    );
  }
}