import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';

class TextTile extends StatelessWidget {
  const TextTile({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.kGreyColor1,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}