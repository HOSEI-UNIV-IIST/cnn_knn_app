import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app_lotties.dart';
import '../themes/app_colors.dart';
import '../themes/theme_mode.dart';

class AppLoader {
  static const circularProgressIndicator = Center(
    child: CircularProgressIndicator(
        strokeWidth: 8, backgroundColor: AppColor.kSecondaryColor),
  );

  static final lottieLoading =
      Center(child: Lottie.asset(AppLotties.loading, height: 120.sp));
}

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(AppLotties.searchEmpty, height: 200.sp),
        SizedBox(height: 10.sp),
        Text("Aucune donnée disponible",
            style: AppThemeMode.of(context).title1.copyWith(
                fontSize: 22.sp,
                color: AppThemeMode.of(context).secondaryText)),
        SizedBox(height: 10.sp),
        Text("veuillez Actualiser !",
            style: AppThemeMode.of(context).title1.copyWith(
                fontFamily: 'Futura',
                fontSize: 16.sp,
                color: AppThemeMode.of(context).secondaryText))
      ],
    );
  }
}
