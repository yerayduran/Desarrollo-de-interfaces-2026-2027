import 'package:flutter/material.dart';

class TableroGameScreen extends StatelessWidget {
  const TableroGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablero Táctico'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(flex: 2, child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:Colors.red,
                  ),

                  child: Column(
                    children: List.generate(4, (row) {
                      return Expanded(
                        child: Row(
                          children: List.generate(4, (col) {
                            return Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.security,
                                    color: Colors.white70,
                                    size: 22,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                  ),
                ),
                ),


                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Jugador 1 (Amarillo)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Icon(
                                Icons.person_2_outlined,
                                color: Colors.yellow,
                                size: 40,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Puntos: 30',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),


                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Jugador 2 (Rojo)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Icon(
                                Icons.person,
                                color: Colors.red,
                                size: 40,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Puntos: 150',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Expanded(
            child: Container(color: Colors.green),
          ),
        ],
      ),
    );
  }
}