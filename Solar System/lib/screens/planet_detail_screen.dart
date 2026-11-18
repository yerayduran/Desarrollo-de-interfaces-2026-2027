import 'package:flutter/material.dart';

import '../model/planet_item.dart';

class PlanetDetailScreen extends StatelessWidget {
  static const String routeName = '/detail';
  const PlanetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalle del Planeta',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black45,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.deepPurple[700],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                planet.imagePath,
                width: 150,
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }
}