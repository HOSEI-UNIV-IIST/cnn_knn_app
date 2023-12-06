import 'package:cnn_knn_app/core/widgets/themes/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDeco {
  static InputDecoration primaryInputDeco(
          {required BuildContext context, required String hintText}) =>
      InputDecoration(
        hintText: hintText,
        filled: true,
        hintStyle: AppThemeMode.of(context).customText.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppThemeMode.of(context).primaryText.withOpacity(.78)),
        fillColor: AppThemeMode.of(context).secondaryBackground,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: .5,
                style: BorderStyle.solid,
                color: AppThemeMode.of(context).purple.withOpacity(.10))),
      );

  static InputDecoration primaryInputDecoLabel(
          {required BuildContext context,
          required String labelText,
          required String hintText,
          errorText}) =>
      InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: true,
        errorText: errorText,
        labelStyle: AppThemeMode.of(context).customText.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: AppThemeMode.of(context).primaryText.withOpacity(.78)),
        hintStyle: AppThemeMode.of(context).customText.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppThemeMode.of(context).primaryText.withOpacity(.78)),
        fillColor: AppThemeMode.of(context).secondaryBackground,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: .5,
                style: BorderStyle.solid,
                color: AppThemeMode.of(context).purple.withOpacity(.10))),
      );
}
