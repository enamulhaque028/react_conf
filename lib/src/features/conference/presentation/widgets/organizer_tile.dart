import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/common_widgets/custom_card_tile.dart';
import 'package:react_conf/src/features/conference/domain/conference_model.dart';

import 'conference_info_tile.dart';

class OrganizerTile extends StatelessWidget {
  const OrganizerTile({
    super.key,
    required this.category,
    required this.organizerData,
  });

  final String category;
  final List<Organizer> organizerData;

  @override
  Widget build(BuildContext context) {
    return ConferenceInfoTile(
      category: category,
      child: ListView.builder(
        itemCount: organizerData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 16.h),
        itemBuilder: (context, index) {
          var data = organizerData[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: CustomCardTile(
              imageUrl: data.image.url,
              title: data.name,
              subTitle: data.aboutShort,
            ),
          );
        },
      ),
    );
  }
}
