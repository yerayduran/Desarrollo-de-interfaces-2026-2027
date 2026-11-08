import 'dart:math';
import 'package:flutter/material.dart';
import '../conditions/juego_conditions.dart';

class JuegoScreenDetails extends StatefulWidget {
  const JuegoScreenDetails({super.key});

  @override
  State<JuegoScreenDetails> createState() => _JuegoScreenDetailsState();
}

class _JuegoScreenDetailsState extends State<JuegoScreenDetails> {
  final List opciones = [
  {'nombre': 'rock', 'ruta': 'assets/images/rock.png'},
  {'nombre': 'paper', 'ruta': 'assets/images/paper.png'},
  {'nombre': 'scissors', 'ruta': 'assets/images/scissors.png'},
  ];

  int indiceJugador1 = 0;
  int indiceJugador2 = 1;
  String mensajeResultado = '';

  void jugarPartida() {
    final aleatorio = Random();
    setState(() {
      indiceJugador1 = aleatorio.nextInt(3);
      indiceJugador2 = aleatorio.nextInt(3);

      String nombreJ1 = opciones[indiceJugador1]['nombre']!;
      String nombreJ2 = opciones[indiceJugador2]['nombre']!;

      mensajeResultado = evaluarGanador(nombreJ1, nombreJ2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rock-Paper-Scissor'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text('Jugador 1',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 16),

                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(opciones[indiceJugador1]['ruta']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    const Text('Jugador 2',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 16),

                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(opciones[indiceJugador2]['ruta']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Text(
              mensajeResultado,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                ),
                onPressed: jugarPartida,
                child: const Text('Go!!',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}