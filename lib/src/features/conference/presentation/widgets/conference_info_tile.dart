import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/common_widgets/custom_card_tile.dart';
import 'package:react_conf/src/config/constants/app_color.dart';

class ConferenceInfoTile extends StatelessWidget {
  const ConferenceInfoTile({
    super.key,
    required this.category,
    this.isVisibleSocialIcons = false,
  });

  final String category;
  final bool isVisibleSocialIcons;

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
          child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 16.h),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: CustomCardTile(
                  imageUrl: 'https://img.freepik.com/premium-photo/beautiful-landscape-based-3d-rendering-illustration_771975-25.jpg',
                  title: 'John Blain Doe',
                  subTitle: 'Lorem ipsum dolor sit amet, con sec tetur ad ipi scin ssddg elit. Et con dim entum lectus in vel pellesn tesque arcu non odio.',
                  isVisibleSocialIcons: isVisibleSocialIcons,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}