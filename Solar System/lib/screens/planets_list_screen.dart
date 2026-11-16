import 'package:flutter/material.dart';

class PlanetsListScreen extends StatelessWidget {
  const PlanetsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            _buildPlanetTile('Sol', 'assets/images/sun.png'),
            _buildPlanetTile('Mercurio', 'assets/images/mercury.png'),
            _buildPlanetTile('Venus', 'assets/images/venus.png'),
            _buildPlanetTile('Tierra', 'assets/images/earth.png'),
            _buildPlanetTile('Luna', 'assets/images/moon.png'),
            _buildPlanetTile('Marte', 'assets/images/mars.png'),
            _buildPlanetTile('Jupiter', 'assets/images/jupiter.png'),
            _buildPlanetTile('Saturno', 'assets/images/saturn.png'),
            _buildPlanetTile('Urano', 'assets/images/uranus.png'),
            _buildPlanetTile('Neptuno', 'assets/images/neptune.png'),
            _buildPlanetTile('Pluton', 'assets/images/pluto.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanetTile(String name, String imagePath) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 45,
          height: 45,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}