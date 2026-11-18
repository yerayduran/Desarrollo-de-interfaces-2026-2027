import 'package:flutter/material.dart';
import 'package:solar_system/model/planet_item.dart';
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
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const PlanetsListScreen(),
            );

          case PlanetDetailScreen.routeName:
            if (settings.arguments is Planet) {
              final planet = settings.arguments as Planet;
              return MaterialPageRoute(
                builder: (_) => PlanetDetailScreen(planet: planet),
              );
            }
        }
      },
    );
  }
}