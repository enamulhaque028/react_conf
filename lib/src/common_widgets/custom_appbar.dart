import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
    this.statusBarColor = AppColor.kBackgroundColor,
  }) : super(key: key);

  final Color statusBarColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kBackgroundColor,
      elevation: 3,
      toolbarHeight: 64.h,
      shadowColor: AppColor.kBackgroundColor.withOpacity(0.3),
      centerTitle: true,
      title: Image.asset(
        ImageAssets.imgAppLogo,
        height: 48.h,
        width: 103.w,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColor.kBackgroundColor,
        statusBarBrightness: Brightness.light, // For iOS: (dark icons)
        statusBarIconBrightness: Brightness.dark, // For Android: (dark icons)
      ),
    );
  }
}
