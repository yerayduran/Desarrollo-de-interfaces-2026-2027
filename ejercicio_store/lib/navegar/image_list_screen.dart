import 'package:flutter/material.dart';
import 'image_detail_screen.dart';
import 'main.dart';

class ImageListScreen extends StatelessWidget {
  const ImageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = [
      ImageData(
        title: 'Imagen 1',
        imageUrl: 'https://picsum.photos/250?image=9',
      ),
      ImageData(
        title: 'Imagen 2',
        imageUrl: 'https://picsum.photos/250?image=10',
      ),
      ImageData(
        title: 'Imagen 3',
        imageUrl: 'https://picsum.photos/250?image=11',
      ),
      ImageData(
        title: 'Imagen 4',
        imageUrl: 'https://picsum.photos/250?image=12',
      ),
      ImageData(
        title: 'Imagen 5',
        imageUrl: 'https://picsum.photos/250?image=13',
      ),

    ];



    return Scaffold(
      appBar: AppBar(title: const Text('Store')),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTileImage(imageData: items[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}




class ListTileImage extends StatelessWidget {
  final ImageData imageData;

  const ListTileImage({required this.imageData, super.key});

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
      trailing: IconButton(
        onPressed: () => Navigator.pushNamed(
          context,
          ImageDetailScreen.routeName,
          arguments: imageData,
        ),
        icon: const Icon(Icons.chevron_right),
      ),
    );
  }
}

class ImageData {
  late final String title;
  late final String imageUrl;
  ImageData({required this.title, required this.imageUrl});
}
