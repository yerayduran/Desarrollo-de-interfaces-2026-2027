import 'package:flutter/material.dart';
import 'image_list_screen.dart';
import 'image_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => const ImageListScreen(),
          );
        }
        if (settings.name == ImageDetailScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) => const ImageDetailScreen(),
            settings: settings,
          );
        }
        return null;
      },
    );
  }
}