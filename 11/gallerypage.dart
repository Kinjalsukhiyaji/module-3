import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dummy Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GalleryPage(),
    );
  }
}

class GalleryPage extends StatelessWidget {
  final List<String> dummyImages = [
    'dummy_images/image1.jpeg',
    'dummy_images/image2.jpg',
    'dummy_images/image3.jpg',
    'dummy_images/image1.jpeg',
    'dummy_images/image2.jpg',
    'dummy_images/image3.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
        ),
        itemCount: dummyImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            dummyImages[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
