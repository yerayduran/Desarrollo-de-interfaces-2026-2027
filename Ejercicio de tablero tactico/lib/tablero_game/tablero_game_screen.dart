import 'package:flutter/material.dart';
import 'package:tablero_tactico/tablero_game/movientos_data.dart';

class TableroGameScreen extends StatelessWidget {
  TableroGameScreen({super.key});

  final List<MovimientoItem> movimientos = [
    MovimientoItem(
      numero: 1,
      titulo: 'Jugador 1 movió pieza',
      subtitulo: 'Caballero a la casilla C3',
      colorAvatar: Colors.yellow,
    ),
    MovimientoItem(
      numero: 2,
      titulo: 'Jugador 2 movió pieza',
      subtitulo: 'Caballero a la casilla B1',
      colorAvatar: Colors.red,
    ),
    MovimientoItem(
      numero: 3,
      titulo: 'Jugador 1 movió pieza',
      subtitulo: 'Caballero a la casilla A4',
      colorAvatar: Colors.yellow,
    ),
    MovimientoItem(
      numero: 4,
      titulo: 'Jugador 2 movió pieza',
      subtitulo: 'Caballero a la casilla A3',
      colorAvatar: Colors.red,
    ),
    MovimientoItem(
      numero: 5,
      titulo: 'Jugador 1 movió pieza',
      subtitulo: 'Caballero a la casilla B2',
      colorAvatar: Colors.yellow,
    ),
    MovimientoItem(
      numero: 6,
      titulo: 'Jugador 2 movió pieza',
      subtitulo: 'Caballero a la casilla D4',
      colorAvatar: Colors.red,
    ),
  ];

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
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.red,
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
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Historial de Movimientos',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(height: 24),
                  Expanded(
                    child: ListView.builder(
                      itemCount: movimientos.length,
                      itemBuilder: (context, index) {
                        final item = movimientos[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: item.colorAvatar,
                            child: Text(
                              '${item.numero}',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          title: Text(item.titulo),
                          subtitle: Text(item.subtitulo),
                          trailing: const Icon(Icons.history, color: Colors.black),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}