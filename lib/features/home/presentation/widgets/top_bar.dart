// ignore_for_file: non_constant_identifier_names

import 'package:cnn_knn_app/core/providers/routes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/extensions/titles_extension.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/widgets/global/avatar/user_avatar_view.dart';
import '../../../../core/widgets/themes/theme_mode.dart';
import '../blocs/home/home_bloc.dart';

/// This function returns an AppBar widget with a title and two avatar icons as actions.
///
/// Args:
///   context (BuildContext): The BuildContext object that represents the location of the widget in the
/// widget tree.
///
/// Returns:
///   A function that returns an AppBar widget.
AppBar HomeAppbar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    elevation: 0,
    backgroundColor: AppThemeMode.of(context).primaryBackground,
    title: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Text(
          EnumsExtension.formatHomePageStatusTitle(state.homePageStatus),
          textAlign: TextAlign.start,
          style: AppThemeMode.of(context).title1.copyWith(fontSize: 20.sp),
        );
      },
    ),
    actions: [],
  );
}
