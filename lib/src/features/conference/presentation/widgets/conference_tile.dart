import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/features/conference/presentation/widgets/timeline.dart';

import 'conference_card_tile.dart';

class ConferenceTile extends StatelessWidget {
  const ConferenceTile({
    super.key,
    required this.name,
    required this.slogan,
    required this.startDate,
    required this.isVisibleUpperLine,
    required this.isVisibleBottomLine,
    required this.onTap,
  });

  final String name;
  final String slogan;
  final String startDate;
  final bool isVisibleUpperLine;
  final bool isVisibleBottomLine;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(65.w, 10.h, 0, 10.h),
          child: Text(
            startDate,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.kGreyColor1,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTimeLine(
              lineHeight: 100.h,
              isVisibleUpperLine: isVisibleUpperLine,
              isVisibleLowerLine: isVisibleBottomLine,
            ),
            Expanded(
              child: GestureDetector(
                onTap: onTap,
                child: ConferenceCardTile(
                  name: name,
                  slogan: slogan,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
