import 'package:flutter/material.dart';

class PlanetsListScreen extends StatelessWidget {
  const PlanetsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sistema solar",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      backgroundColor: Colors.deepPurple[700],
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

  Widget _buildPlanetTile(String nombre, String ruta) {
    return Column(
      children: [
        Padding(
          padding:EdgeInsets.all(4),
          child: ListTile(
            leading: Image.asset(
              ruta,
              width: 45,
              height: 45,
            ),
            title: Text(
              nombre,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white70,
              size: 16,
            ),
          ),
        ),
        const Divider(
          color: Colors.white,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}