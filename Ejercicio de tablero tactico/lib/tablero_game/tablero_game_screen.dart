import 'package:flutter/material.dart';
import 'package:tablero_tactico/tablero_game/movientos_data.dart';

class TableroGameScreen extends StatelessWidget {
  TableroGameScreen({super.key});

  final List<MovimientoItem> movimientos = [
    MovimientoItem(
      numero: 1,
      titulo: 'Jugador 1 movió pieza',
      subtitulo: 'Caballero a la casilla C3',
      colorAvatar: Colors.amber,
    ),
    MovimientoItem(
      numero: 2,
      titulo: 'Jugador 2 movió pieza',
      subtitulo: 'Caballero a la casilla B1',
      colorAvatar: Colors.cyanAccent,
    ),
    MovimientoItem(
      numero: 3,
      titulo: 'Jugador 1 movió pieza',
      subtitulo: 'Caballero a la casilla A4',
      colorAvatar: Colors.amber,
    ),
    MovimientoItem(
      numero: 4,
      titulo: 'Jugador 2 movió pieza',
      subtitulo: 'Caballero a la casilla A3',
      colorAvatar: Colors.cyanAccent,
    ),
    MovimientoItem(
      numero: 5,
      titulo: 'Jugador 1 movió pieza',
      subtitulo: 'Caballero a la casilla B2',
      colorAvatar: Colors.amber,
    ),
    MovimientoItem(
      numero: 6,
      titulo: 'Jugador 2 movió pieza',
      subtitulo: 'Caballero a la casilla D4',
      colorAvatar: Colors.cyanAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090D16),
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Tablero Táctico',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF111827),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF111827),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFF1F2937), width: 2),
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
                                      color: const Color(0xFF1E293B),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: const Color(0xFF334155)),
                                    ),

                                    child: const Center(
                                      child: Icon(
                                        Icons.security,
                                        color: Color(0xFF94A3B8),
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
                  const SizedBox(width: 12),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF111827),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFF1F2937), width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Jugador 1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Icon(
                                  Icons.person_2_outlined,
                                  color: Colors.amber,
                                  size: 34,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Puntos: 30',
                                  style: TextStyle(color: Colors.amberAccent, fontSize: 13, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),

                          const Divider(color: Color(0xFF1F2937)),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Jugador 2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Icon(
                                  Icons.person,
                                  color: Colors.cyanAccent,
                                  size: 34,
                                ),
                                SizedBox(height: 4),
                                Text('Puntos: 150',
                                  style: TextStyle(color: Colors.cyan, fontSize: 13, fontWeight: FontWeight.w500),
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

            const SizedBox(height: 12),

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF111827),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFF1F2937), width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Historial de Movimientos',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(height: 16, color: Color(0xFF1F2937)),
                    Expanded(
                      child: ListView.builder(
                        itemCount: movimientos.length,
                        itemBuilder: (context, index) {
                          final item = movimientos[index];
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: item.colorAvatar,
                              radius: 18,
                              child: Text('${item.numero}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            title: Text(
                              item.titulo,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              item.subtitulo,
                              style: const TextStyle( color: Color(0xFF94A3B8)),
                            ),
                            trailing: const Icon(Icons.history, color: Color(0xFF64748B)),
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
      ),
    );
  }
}