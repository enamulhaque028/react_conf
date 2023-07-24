import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/routes/route.dart';
import 'package:react_conf/src/features/conference/presentation/conference_details_page.dart';

import '../../../common_widgets/loading_indicator.dart';
import '../bloc/conference_bloc.dart';
import 'widgets/conference_tile.dart';

class ConferencePage extends StatelessWidget {
  const ConferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocBuilder<ConferenceBloc, ConferenceState>(
        builder: (context, state) {
          var conferenceData = state.isLoading ? [] : state.conferenceData!.data.conferences;
          return state.isLoading ? const LoadingIndicator() : ListView.builder(
            padding: EdgeInsets.only(top: 16.h),
            itemCount: conferenceData.length,
            itemBuilder: (context, index) {
              var conferenceInfo = conferenceData[index];
              return ConferenceTile(
                name: conferenceInfo.name,
                slogan: conferenceInfo.slogan,
                startDate: conferenceInfo.startDate,
                isVisibleUpperLine: index != 0,
                isVisibleBottomLine: index != conferenceData.length-1,
                onTap: () => RouteController.instance.push(
                  page: ConferenceDetailsPage(
                    conferenceDataIndex: index,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}