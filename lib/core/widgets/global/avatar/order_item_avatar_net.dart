import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemAvatarNet extends StatelessWidget {
  const ItemAvatarNet({
    super.key,
    required this.netImage,
  });
  final String netImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.network(
          netImage,
          width: 22.w,
          height: 15.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
