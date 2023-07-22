import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:react_conf/src/config/constants/app_color.dart';

class ZeroSizeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ZeroSizeAppBar({
    Key? key,
    this.statusBarColor = AppColor.kBackgroundColor,
  }) : super(key: key);

  final Color statusBarColor;

  @override
  Size get preferredSize => const Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.zero,
      child: AppBar(
        elevation: 0,
        backgroundColor: statusBarColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: statusBarColor,
          statusBarBrightness: Brightness.dark, // For iOS: (dark icons)
          statusBarIconBrightness: Brightness.light, // For Android: (dark icons)
        ),
      ),
    );
  }
}
