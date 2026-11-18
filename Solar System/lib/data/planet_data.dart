import '../model/planet_item.dart';

class PlanetData {
  static List<Planet> getPlanets() {
    return const [
      Planet(
        nombre: 'Sol',
        imagePath: 'assets/images/sun.png',
        distancia: '0 Millones Km',
        descripcion: 'The Sun is the star at the heart of our solar system. Its gravity holds the solar system together, keeping everything — from the biggest planets to the smallest bits of debris — in its orbit.'
      ),
      Planet(
        nombre: 'Mercurio',
        imagePath: 'assets/images/mercury.png',
        distancia: '57.9 Millones Km',
        descripcion: "Mercury is the closest planet to the Sun, and the smallest planet in our solar system. It's only slightly larger than Earth's Moon."
      ),
      Planet(
        nombre: 'Venus',
        imagePath: 'assets/images/venus.png',
        distancia: '108.2 Millones Km',
        descripcion: "Mercury is the closest planet to the Sun, and the smallest planet in our solar system. It's only slightly larger than Earth's Moon."
      ),
      Planet(
        nombre: 'Tierra',
        imagePath: 'assets/images/earth.png',
        distancia: '149.5 Millones Km',
        descripcion: "Mercury is the closest planet to the Sun, and the smallest planet in our solar system. It's only slightly larger than Earth's Moon."
      ),
      Planet(
        nombre: 'Luna',
        imagePath: 'assets/images/moon.png',
        distancia: '149.5 Millones Km (Satélite)',
        descripcion: "From lighting up our skies to preserving evidence of our solar system’s history, Earth’s closest neighbor plays a pivotal role in the study of our planet and beyond."
      ),
      Planet(
        nombre: 'Marte',
        imagePath: 'assets/images/mars.png',
        distancia: '227.9 Millones Km',
        descripcion: "Mars is the fourth planet from the Sun, and the seventh largest. It’s the only planet we know of inhabited entirely by robots."
      ),
      Planet(
        nombre: 'Júpiter',
        imagePath: 'assets/images/jupiter.png',
        distancia: '778.5 Millones Km',
        descripcion: "Jupiter is the fifth planet from the Sun, and the largest in the solar system, by far — more than twice as massive as the other planets combined."
      ),
      Planet(
        nombre: 'Saturno',
        imagePath: 'assets/images/saturn.png',
        distancia: '1,434 Millones Km',
        descripcion: "Saturn is the sixth planet from the Sun, and the second largest in the solar system. It’s surrounded by beautiful rings."
      ),
      Planet(
        nombre: 'Urano',
        imagePath: 'assets/images/uranus.png',
        distancia: '2,871 Millones Km',
        descripcion: "Uranus is the seventh planet from the Sun, and the third largest planet in our solar system. It appears to spin sideways."
      ),
      Planet(
        nombre: 'Neptuno',
        imagePath: 'assets/images/neptune.png',
        distancia: '4,495 Millones Km',
        descripcion: "Neptune is the eighth, and most distant planet from the Sun. It’s the fourth-largest, and the first planet discovered with math."
      ),
      Planet(
        nombre: 'Plutón',
        imagePath: 'assets/images/pluto.png',
        distancia: '5,906 Millones Km',
        descripcion: "Pluto was once our solar system's ninth planet, but has been reclassified as a dwarf planet. It's located in the Kuiper Belt."
      ),
    ];
  }
}