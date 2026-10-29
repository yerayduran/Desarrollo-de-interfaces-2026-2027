import 'package:flutter/material.dart';

import 'image_list_screen.dart';

class ImageDetailScreen extends StatelessWidget {
  static const routeName = '/image_detail_screen';

  const ImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageData = ModalRoute
        .of(context)!
        .settings
        .arguments as ImageData;

    return Scaffold(
      appBar: AppBar(
        title: Text(imageData.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageData.imageUrl,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('VOLVER'),
            ),
          ],
        ),
      ),
    );
  }
}
