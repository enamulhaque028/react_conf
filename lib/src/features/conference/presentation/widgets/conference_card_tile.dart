import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';

class ConferenceCardTile extends StatelessWidget {
  const ConferenceCardTile({
    super.key,
    required this.name,
    required this.slogan,
  });

  final String name;
  final String slogan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColor.kPrimaryColor,
                width: 4.w,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                color: AppColor.kGreyColor1,
                spreadRadius: 5,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Container(
            color: AppColor.kGreyColor3,
            padding: EdgeInsets.all(16.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 12.h,
                        right: 12.w,
                      ),
                      child: SvgPicture.asset(
                        ImageAssets.icMarker,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.kSecondaryColor,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    slogan,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.kGreyColor1,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
