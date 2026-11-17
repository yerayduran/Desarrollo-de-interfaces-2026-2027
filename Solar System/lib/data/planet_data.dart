import '../model/planet_item.dart';

class PlanetData {
  static List<Planet> getPlanets() {
    return const [
      Planet(
        nombre: 'Sol',
        imagePath: 'assets/images/sun.png',
        distancia: '0 Millones Km',
      ),
      Planet(
        nombre: 'Mercurio',
        imagePath: 'assets/images/mercury.png',
        distancia: '57.9 Millones Km',
      ),
      Planet(
        nombre: 'Venus',
        imagePath: 'assets/images/venus.png',
        distancia: '108.2 Millones Km',
      ),
      Planet(
        nombre: 'Tierra',
        imagePath: 'assets/images/earth.png',
        distancia: '149.5 Millones Km',
      ),
      Planet(
        nombre: 'Luna',
        imagePath: 'assets/images/moon.png',
        distancia: '149.5 Millones Km (Satélite)',
      ),
      Planet(
        nombre: 'Marte',
        imagePath: 'assets/images/mars.png',
        distancia: '227.9 Millones Km',
      ),
      Planet(
        nombre: 'Júpiter',
        imagePath: 'assets/images/jupiter.png',
        distancia: '778.5 Millones Km',
      ),
      Planet(
        nombre: 'Saturno',
        imagePath: 'assets/images/saturn.png',
        distancia: '1,434 Millones Km',
      ),
      Planet(
        nombre: 'Urano',
        imagePath: 'assets/images/uranus.png',
        distancia: '2,871 Millones Km',
      ),
      Planet(
        nombre: 'Neptuno',
        imagePath: 'assets/images/neptune.png',
        distancia: '4,495 Millones Km',
      ),
      Planet(
        nombre: 'Plutón',
        imagePath: 'assets/images/pluto.png',
        distancia: '5,906 Millones Km',
      ),
    ];
  }
}