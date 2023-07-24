import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';

import '../../domain/conference_model.dart';

class ScheduleTile extends StatelessWidget {
  const ScheduleTile({
    super.key,
    required this.category,
    required this.scheduleData,
  });

  final String category;
  final List<Schedule> scheduleData;

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
            itemCount: scheduleData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 16.h),
            itemBuilder: (context, index) {
              var scheduleInfo = scheduleData[index];
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Card(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              scheduleInfo.day,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColor.kSecondaryTextColor,
                              ),
                            ),
                            Text(
                              'Wednesday',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.kSecondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          itemCount: scheduleInfo.intervals.length,
                          padding: EdgeInsets.only(top: 0.h),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var intervalInfo = scheduleInfo.intervals[index];
                            return Padding(
                              padding: EdgeInsets.only(top: 16.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Duration : ${intervalInfo.begin}-${intervalInfo.end}',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.kSecondaryTextColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Text(
                                      '• ${intervalInfo.title}',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.kSecondaryTextColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
