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
                  padding: const EdgeInsets.all(8.0),
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
                                  margin: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.security,
                                      color: Colors.white70,
                                      size: 22.0,
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
                  child: Container(color: Colors.blue),
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