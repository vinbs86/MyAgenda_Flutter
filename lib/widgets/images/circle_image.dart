import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final Image image;
  final double width;
  final double height;

  const CircleImage({Key key, @required this.image, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(shape: CircleBorder(), child: image);
  }
}
