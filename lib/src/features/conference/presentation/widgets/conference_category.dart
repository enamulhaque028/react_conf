import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'conference_info_tile.dart';
import 'schedule_tile.dart';

class ConferenceCategoryTile extends StatelessWidget {
  const ConferenceCategoryTile({
    Key? key,
    required this.category,
    required this.index,
  }) : super(key: key);

  final String category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: index == 0
          ? ConferenceInfoTile(category: category) //Organizer
          : index == 1
              ? ConferenceInfoTile(
                category: category,
                isVisibleSocialIcons: true,
              ) //Speakers
          : index == 2
              ? ScheduleTile(category: category) //Schedule
          : index == 3
              ? ConferenceInfoTile(category: category) //Sponsors
              : Container(),
    );
  }
}
