import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  const PictureContainer({
    super.key,
    required this.image,
    this.color,
  });

  final String image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        image: DecorationImage(
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
