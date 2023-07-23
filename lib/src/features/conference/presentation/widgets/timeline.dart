import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';

class CustomTimeLine extends StatelessWidget {
  const CustomTimeLine({
    super.key,
    required this.lineHeight,
    this.lineColor = AppColor.kPrimaryColor,
    this.circleBorderColor = AppColor.kPrimaryColor,
    this.circleBgColor = const Color(0xFFfff9eb),
    this.isVisibleUpperLine = true,
    this.isVisibleLowerLine = true,
  });

  final double lineHeight;
  final Color lineColor;
  final Color circleBorderColor;
  final Color circleBgColor;
  final bool isVisibleUpperLine;
  final bool isVisibleLowerLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 2,
            height: lineHeight / 2,
            decoration: BoxDecoration(
              color: lineColor,
              shape: BoxShape.rectangle,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: circleBorderColor,
                ),
                shape: BoxShape.circle,
                color: circleBgColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  ImageAssets.icTimeline,
                  height: 24.h,
                  width: 16.w,
                ),
              ),
            ),
          ),
          Container(
            width: 2,
            height: lineHeight / 2,
            decoration: BoxDecoration(
              color: isVisibleLowerLine ? lineColor : AppColor.kBackgroundColor,
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
