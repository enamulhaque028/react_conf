import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';

class ConferenceInfoTile extends StatelessWidget {
  const ConferenceInfoTile({
    super.key,
    required this.category,
    this.isVisibleSocialIcons = false,
    required this.child,
  });

  final String category;
  final bool isVisibleSocialIcons;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Text(
            category,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColor.kPrimaryTextColor,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColor.kGreyColor3,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: child,
        ),
      ],
    );
  }
}
