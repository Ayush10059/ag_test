import 'package:flutter/material.dart';

import 'package:ag_test/src/features/blogs/data/models/blog_response_model.dart';
import 'package:ag_test/src/features/blogs/presentation/widgets/picture_container.dart';

class BlogContainer extends StatelessWidget {
  const BlogContainer({super.key, required this.data});

  final Datum data;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PictureContainer(image: data.thumbnails.path),
          Text(
            data.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(data.description),
        ],
      ),
    );
  }
}
