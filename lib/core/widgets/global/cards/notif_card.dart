import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/theme_mode.dart';

/// The `CustomNotifCard` class is a stateless widget that displays a notification card with a title,
/// subtitle, and a close button.
class CustomNotifCard extends StatelessWidget {
  const CustomNotifCard(
      {super.key,
      required this.title,
      required this.ontap,
      required this.subtitle});
  final String title;
  final String subtitle;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 86.sp,
          width: 400.sp,
          padding: EdgeInsets.symmetric(horizontal: 47.sp, vertical: 17.sp),
          margin: EdgeInsets.symmetric(vertical: 8.sp),
          decoration: BoxDecoration(
              color: AppThemeMode.of(context).primaryColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10.sp)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  textAlign: TextAlign.start,
                  style: AppThemeMode.of(context).title1.copyWith(
                        fontSize: 17.sp,
                        color: AppThemeMode.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                      )),
              Text(subtitle,
                  textAlign: TextAlign.start,
                  style: AppThemeMode.of(context).title1.copyWith(
                        fontSize: 13.sp,
                        fontStyle: FontStyle.italic,
                        color: AppThemeMode.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                      )),
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: InkWell(
        //     onTap: ontap,
        //     child: Padding(
        //       padding: EdgeInsets.all(8.sp),
        //       child: const CircleAvatar(
        //         backgroundImage: AssetImage(AppIcons.close),
        //         backgroundColor: Colors.transparent,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
