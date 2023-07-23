import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/routes/route.dart';
import 'package:react_conf/src/features/conference/presentation/conference_details_page.dart';

import 'widgets/conference_tile.dart';

class ConferencePage extends StatelessWidget {
  const ConferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16.h),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ConferenceTile(
            name: 'Freezing Edge 2023 Freezing Edge 2023',
            slogan: 'The edge isn\'t bleeding, it\'s freezing! bleeding, it\'s freezing!',
            startDate: '02 September, 2023',
            isVisibleUpperLine: index != 0,
            isVisibleBottomLine: index != 4,
            onTap: () => RouteController.instance.push(
              page: const ConferenceDetailsPage(),
            ),
          );
        },
      ),
    );
  }
}