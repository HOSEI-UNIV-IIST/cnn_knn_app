import 'package:flutter/material.dart';

class CustomDecoImageNet extends StatelessWidget {
  const CustomDecoImageNet({
    super.key,
    required this.url,
    this.size = 48,
    this.radius = 50,
  });
  final String url;
  final double size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: NetworkImage(
              url.isNotEmpty ? url : "https://via.placeholder.com/33x28"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
