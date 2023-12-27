import 'package:flutter/material.dart';

class PixabayImageWidget extends StatelessWidget {
  final String url;

  const PixabayImageWidget({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ));
  }
}
