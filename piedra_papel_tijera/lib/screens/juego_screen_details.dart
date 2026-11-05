import 'package:flutter/material.dart';

class JuegoScreenDetails extends StatefulWidget {
  const JuegoScreenDetails({super.key});

  @override
  State<JuegoScreenDetails> createState() => _JuegoScreenDetailsState();
}

class _JuegoScreenDetailsState extends State<JuegoScreenDetails> {
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
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset('images/piedra.png'),
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
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          'Icon Paper',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              'Player 2 win!!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                ),
                onPressed: () {
                },
                child: const Text(
                  'Go!!',
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