import 'package:flutter/material.dart';
import 'package:solar_system/screens/planet_detail_screen.dart';

import '../data/planet_data.dart';
import '../model/planet_item.dart';

class PlanetsListScreen extends StatelessWidget {
  const PlanetsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Planet> planets = PlanetData.getPlanets();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sistema solar',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      backgroundColor: Colors.deepPurple[700],
      body: SafeArea(
        child: ListView.separated(
          itemCount: planets.length,
          separatorBuilder: (context, index) => const Divider(
            color: Colors.white24,
            height: 1,
            thickness: 1,
          ),
          itemBuilder: (context, index) {
            final planet = planets[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetailScreen(planet: planet),
                    ),
                  );
                },
                leading: Image.asset(
                  planet.imagePath,
                  width: 45,
                  height: 45,
                ),
                title: Text(
                  planet.nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  planet.distancia,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white70,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                  size: 16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}