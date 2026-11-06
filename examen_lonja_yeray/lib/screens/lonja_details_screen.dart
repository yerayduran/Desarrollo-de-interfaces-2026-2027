import 'package:examen_lonja_yeray/data/mock_data.dart';
import 'package:flutter/material.dart';

class LonjaDetailsScreen extends StatelessWidget{
  final List<Barco> barcos = mockBarcos;
  final List<Captura> capturas = mockCapturas;
  final TipoPescado tipoPescado;


  LonjaDetailsScreen({required this.tipoPescado, required List<Barco> barcos, required List<Captura> capturas}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del Pescado"),
      ),
    body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tipoPescado.nombre),
                Text(tipoPescado.categoria),
                Text(tipoPescado.descripcion),
              ]
            )]));
}}



