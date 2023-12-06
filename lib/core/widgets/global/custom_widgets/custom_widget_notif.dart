import 'package:cnn_knn_app/core/utils/app_icons.dart';
import 'package:cnn_knn_app/core/widgets/themes/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogNotif extends StatelessWidget {
  const CustomDialogNotif({
    super.key,
    this.iconPath = AppIcons.paiementNotif,
    this.message = 'Votre paiement a été effectué avec succès !',
    required this.action,
  });
  final String iconPath;
  final String message;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 369.sp,
      height: 397.sp,
      decoration: ShapeDecoration(
        color: AppThemeMode.of(context).white,
        shape: RoundedRectangleBorder(
          side:
              BorderSide(width: 0.5.sp, color: AppThemeMode.of(context).purple),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        shadows: [
          BoxShadow(
            color: AppThemeMode.of(context).primaryColor,
            blurRadius: 2.sp,
            offset: const Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80.sp,
            height: 80.sp,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconPath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 238.sp,
            height: 124.sp,
            child: Text(
              message,
              style: TextStyle(
                color: AppThemeMode.of(context).primaryText,
                fontSize: 24.sp,
                fontFamily: 'Futura',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          InkWell(
            onTap: action,
            child: Container(
              width: 182.sp,
              height: 45.sp,
              decoration: ShapeDecoration(
                color: AppThemeMode.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.sp),
                ),
              ),
              child: Center(
                child: Text(
                  'Fermer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppThemeMode.of(context).primaryText,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDialogAlert extends StatelessWidget {
  const CustomDialogAlert({
    super.key,
    this.iconPath = AppIcons.warning,
    this.message =
        "You're trying to remove this association in cache. If you continue, it remain available but will be remove localy.",
    required this.action,
    required this.cancel,
  });
  final String iconPath;
  final String message;
  final VoidCallback action;
  final VoidCallback cancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.sp,
      height: 400.sp,
      padding: EdgeInsets.all(16.sp),
      decoration: ShapeDecoration(
        color: AppThemeMode.of(context).white,
        shape: RoundedRectangleBorder(
          side:
              BorderSide(width: 0.5.sp, color: AppThemeMode.of(context).purple),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        shadows: [
          BoxShadow(
            color: AppThemeMode.of(context).primaryColor,
            blurRadius: 2.sp,
            offset: const Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80.sp,
            height: 80.sp,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconPath),
                invertColors: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 350.sp,
            height: 200.sp,
            child: Text(
              message,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: AppThemeMode.of(context).primaryText,
                fontSize: 24.sp,
                fontFamily: 'Futura',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: cancel,
                child: Container(
                  // width: 182.sp,
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  height: 45.sp,
                  decoration: ShapeDecoration(
                    color: AppThemeMode.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.sp),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppThemeMode.of(context).primaryText,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: action,
                child: Container(
                  // width: 182.sp,
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  height: 45.sp,
                  decoration: ShapeDecoration(
                    color: AppThemeMode.of(context).numpad,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.sp),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Remove now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppThemeMode.of(context).primaryText,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
