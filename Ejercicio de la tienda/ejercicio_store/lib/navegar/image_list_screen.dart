import 'package:ejerciciosdecarmelo/navegar/product_data.dart';
import 'package:flutter/material.dart';

import 'image_detail_screen.dart';


class ImageListScreen extends StatelessWidget {
  const ImageListScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RestoApp'),
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTileImage(
            imageData: items[index],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}

class ListTileImage extends StatelessWidget {
  final ImageData imageData;

  const ListTileImage({
    required this.imageData,
    super.key,
  });

  void _openDetail(BuildContext context) {
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (context) => ImageDetailScreen(
          imageData: imageData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        imageData.imageUrl,
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      title: Text(imageData.title),
      subtitle: Text(imageData.description),
      trailing: IconButton(
        onPressed: () => _openDetail(context),
        icon: const Icon(Icons.chevron_right),
      ),
    );
  }
}