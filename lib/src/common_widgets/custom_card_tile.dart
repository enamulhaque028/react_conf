import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:react_conf/src/config/constants/app_color.dart';

import 'social_icon_tile.dart';

class CustomCardTile extends StatelessWidget {
  const CustomCardTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.isVisibleSocialIcons = false,
  });

  final String imageUrl;
  final String title;
  final String subTitle;
  final bool isVisibleSocialIcons;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8), // Image border
              child: SizedBox(
                height: 88.h,
                width: 88.h,
                child: imageUrl.toLowerCase().split('.').last.contains('svg') ? SvgPicture.network(
                    imageUrl,
                    fit: BoxFit.contain,
                  ) : Image.network(
                      imageUrl,
                      fit: BoxFit.contain,
                    ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.kSecondaryTextColor,
                    ),
                    maxLines: 2,
                  ),
                  isVisibleSocialIcons
                      ? const SocialIconTile()
                      : SizedBox(height: 8.h),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.kSecondaryTextColor,
                    ),
                    maxLines: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
