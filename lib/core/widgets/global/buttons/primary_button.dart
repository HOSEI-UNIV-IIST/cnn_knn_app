import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/theme_mode.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.ontap,
    this.isEnable = true,
  });
  final String title;
  final VoidCallback ontap;
  final bool isEnable;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60.h,
        // width: 385.w,
        decoration: BoxDecoration(
            color: isEnable
                ? AppThemeMode.of(context).primaryColor
                : AppThemeMode.of(context).neutralColors,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Text(title,
                style: AppThemeMode.of(context).customText.copyWith(
                    fontFamily: 'Futura',
                    color: AppThemeMode.of(context).primaryText,
                    fontWeight: FontWeight.w400,
                    fontSize: 24.sp)),
          ),
        ),
      ),
    );
  }
}
