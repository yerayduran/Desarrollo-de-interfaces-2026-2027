import 'package:flutter/material.dart';
import 'package:ejemplo_scroll/scroll/top_buttons.dart';

class ExampleScroll extends StatefulWidget {
  const ExampleScroll({super.key});

  @override
  State<ExampleScroll> createState() => _ExampleScrollState();
}

class _ExampleScrollState extends State<ExampleScroll> {
  final ScrollController _scrollController = ScrollController();

  final List<Color> _listaColores = [
    Colors.blue,
    Colors.amber,
    Colors.red,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.teal,
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final double currentOffset = _scrollController.hasClients ? _scrollController.offset : 0.0;

    return Scaffold(
      body: Column(
        children: [
          TopButtons(
            _moveUp,
            _moveDown,
            currentOffset.toStringAsFixed(1),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 100,
              itemBuilder: (context, index) {
                final Color colorOriginal = _listaColores[index % _listaColores.length];

                final double itemPosition = index * 100;

                final bool debeCambiarColor = currentOffset > (itemPosition + 100);
                final Color colorActual = debeCambiarColor ? colorOriginal : Colors.white;

                return Container(
                  height: 300,
                  margin: const EdgeInsets.all(2),
                  color: colorActual,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _moveUp() {
    _scrollController.jumpTo(_scrollController.offset - 100);
  }

  _moveDown() {
    _scrollController.jumpTo(_scrollController.offset + 100);
  }
}