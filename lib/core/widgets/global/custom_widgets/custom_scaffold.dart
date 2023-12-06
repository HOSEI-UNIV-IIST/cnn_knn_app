// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/theme_mode.dart';

class CustomScaffold extends StatelessWidget {
  CustomScaffold({
    super.key,
    required this.child,
    this.appBar,
    this.applyDefaultBar = false,
    this.applyDefaultTitle = '',
    this.topSize = 50,
  });
  final Widget child;
  PreferredSize? appBar;
  final bool applyDefaultBar;
  final String applyDefaultTitle;
  final double topSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeMode.of(context).primaryBackground,
      appBar: applyDefaultBar
          ? AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: AppThemeMode.of(context).primaryBackground,
              title: Text(
                applyDefaultTitle,
                style:
                    AppThemeMode.of(context).title1.copyWith(fontSize: 20.sp),
              ),
              centerTitle: true,
              elevation: 0)
          : appBar ??
              const PreferredSize(
                  preferredSize: Size.fromHeight(.99999), child: SizedBox()),
      body: Padding(
        padding: EdgeInsets.only(
            top: applyDefaultBar || appBar != null ? 0 : topSize.h),
        child: child,
      ),
    );
  }
}
