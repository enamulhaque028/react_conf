import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';

import 'widgets/image_tile.dart';
import 'widgets/text_tile.dart';

class SponsorPage extends StatelessWidget {
  const SponsorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Gold Sponsor
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kGreyColor3,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTile(
                        text: '🥇 Gold Sponsor',
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ImageTile(
                            imagePath: ImageAssets.imgLayer,
                          ),
                          ImageTile(
                            imagePath: ImageAssets.imgSispyhus,
                          ),
                          Container()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kGreyColor3,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTile(
                        text: '🥈 Silver Sponsors',
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ImageTile(
                            imagePath: ImageAssets.imgCircooles,
                          ),
                          ImageTile(
                            imagePath: ImageAssets.imgCatalog,
                          ),
                          Container()
                        ],
                      ),
                      SizedBox(height: 16.h),
                      ImageTile(
                        imagePath: ImageAssets.imgGoforce,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kGreyColor3,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTile(
                        text: '🥉 Bronze Sponsors',
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ImageTile(
                            imagePath: ImageAssets.imgSispyhus,
                          ),
                          ImageTile(
                            imagePath: ImageAssets.imgCatalog,
                          ),
                          Container()
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ImageTile(
                            imagePath: ImageAssets.imgGoforce,
                          ),
                          ImageTile(
                            imagePath: ImageAssets.imgLayer,
                          ),
                          Container()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
