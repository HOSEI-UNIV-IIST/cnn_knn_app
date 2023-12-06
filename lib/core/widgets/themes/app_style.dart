import 'package:cnn_knn_app/core/widgets/themes/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppStyle {
  static const kDefaultPadding = 20.0;

  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColor.kPrimaryColor));

  static primaryStyle(BuildContext context) =>
      AppThemeMode.of(context).title1.copyWith(fontSize: 22.sp);
}
