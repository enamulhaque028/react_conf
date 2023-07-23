import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';

class SocialIconTile extends StatelessWidget {
  const SocialIconTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            ImageAssets.icTwitter,
            height: 14.h,
            width: 14.w,
          ),
          SvgPicture.asset(
            ImageAssets.icLinkedin,
            height: 14.h,
            width: 14.w,
          ),
          SvgPicture.asset(
            ImageAssets.icDribbble,
            height: 14.h,
            width: 14.w,
          ),
          SvgPicture.asset(
            ImageAssets.icGithub,
            height: 14.h,
            width: 14.w,
          ),
        ],
      ),
    );
  }
}
