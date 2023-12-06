import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAuthAssociationButton extends StatelessWidget {
  const NewAuthAssociationButton({
    super.key,
    required this.title,
    required this.ontap,
    this.isEnable = true,
  });
  final Widget title;
  final VoidCallback ontap;
  final bool isEnable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: SizedBox(
        width: double.infinity,
        height: 60.sp,
        child: ElevatedButton(onPressed: ontap, child: title),
      ),
    );
  }
}
