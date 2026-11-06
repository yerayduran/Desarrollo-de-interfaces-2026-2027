import 'package:examen_lonja_yeray/screens/lonja_details_screen.dart';
import 'package:flutter/material.dart';
import '../data/mock_data.dart';


class LonjaListScreen({super.key}) extends StatefulWidget {
  @override
  State<LonjaListScreen> createState() => _LonjaListScreenState();
}

class _LonjaListScreenState extends State<LonjaListScreen> {
  final List<TipoPescado> tiposPescado = mockTiposPescado;

  final List<Barco> barcos = mockBarcos;

  final List<Captura> capturas = mockCapturas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Lonja'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
        actions: [
          IconButton(
            icon: Icon(Icons.change_circle_outlined),
            onPressed: () {

            },
          ),
        ],),

        body: ListView.separated(
          itemCount: tiposPescado.length,
          itemBuilder: (context, index) {
            final tipoPescado = tiposPescado[index];
            return ListTile(
              leading: Image.asset(tipoPescado.imagenUrl, width: 50, height: 50),
              title: Text(tipoPescado.nombre),
              subtitle: Text(tipoPescado.categoria),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LonjaDetailsScreen(tipoPescado: tipoPescado, barcos: barcos, capturas: capturas),
                    ),
                  );
                },
            ));
          },
            separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey,
              thickness: 1,
            );
          },
        ),
      );



  }
}
