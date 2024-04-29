import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Gallery> gallery = [
    Gallery(image: 'image/img_1.jpg'),
    Gallery(image: 'image/img_2.jpg'),
    Gallery(image: 'image/img_3.jpg'),
    Gallery(image: 'image/img_4.jpg'),
    Gallery(image: 'image/img_5.jpg'),
    Gallery(image: 'image/img_6.jpg'),
    Gallery(image: 'image/img_7.jpg'),
    Gallery(image: 'image/img_8.jpg'),
    Gallery(image: 'image/img_9.jpg'),
  ];

  Gallery? selectedImage;

  void _showImageDialog(BuildContext context, Gallery image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              image.image,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black26,
      child: Center(
        child: GridView.builder(
          itemCount: gallery.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedImage = gallery[index];
                _showImageDialog(context, selectedImage!);
              });
            },
            child: Image.asset(
              gallery[index].image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class Gallery {
  String image;

  Gallery({required this.image});
}