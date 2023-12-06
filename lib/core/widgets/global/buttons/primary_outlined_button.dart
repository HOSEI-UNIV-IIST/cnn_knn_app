import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/theme_mode.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
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
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isEnable
                  ? AppThemeMode.of(context).primaryColor
                  : AppThemeMode.of(context).neutralColors,
            )),
        child: Center(
          child: Text(title,
              style: AppThemeMode.of(context).customText.copyWith(
                  fontFamily: 'Futura',
                  color: AppThemeMode.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp)),
        ),
      ),
    );
  }
}
