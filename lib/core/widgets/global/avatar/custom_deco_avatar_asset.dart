import 'package:cnn_knn_app/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

class CustomDecoImageAsset extends StatelessWidget {
  const CustomDecoImageAsset({
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
          image: AssetImage(url.isNotEmpty ? url : AppIcons.megaphone),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
