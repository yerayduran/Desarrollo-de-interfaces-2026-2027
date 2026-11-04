import 'package:ejerciciosdecarmelo/navegar/product_data.dart';
import 'package:flutter/material.dart';


class ImageDetailScreen extends StatelessWidget {
  final ImageData imageData;

  const ImageDetailScreen({
    required this.imageData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle del producto"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  imageData.imageUrl,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover),

              const SizedBox(height: 24),
              Text(
                imageData.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blue[200],
                child: SizedBox(
                  child: Text(
                    imageData.description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

            ],

            Container(
              color: Colors.blue[200],
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}