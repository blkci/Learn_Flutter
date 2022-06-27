import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 400, width: 300, child: PngImage(name: ImageItems().appleWithBook)),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = 'Back_to_School-512.png';
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/$name', fit: BoxFit.cover);
  }
}
