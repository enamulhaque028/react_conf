import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/features/conference/presentation/widgets/sponsor_tile.dart';

import '../../bloc/conference_bloc.dart';
import 'organizer_tile.dart';
import 'schedule_tile.dart';
import 'speaker_tile.dart';

class ConferenceCategoryTile extends StatelessWidget {
  const ConferenceCategoryTile({
    Key? key,
    required this.category,
    required this.index,
    required this.conferenceDataIndex,
  }) : super(key: key);

  final String category;
  final int index;
  final int conferenceDataIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConferenceBloc, ConferenceState>(
      builder: (context, state) {
        var organizerData = state.conferenceData!.data.conferences[conferenceDataIndex].organizers;
        var speakerData = state.conferenceData!.data.conferences[conferenceDataIndex].speakers;
        var sponsorData = state.conferenceData!.data.conferences[conferenceDataIndex].sponsors;
        var scheduleData = state.conferenceData!.data.conferences[conferenceDataIndex].schedules;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: index == 0 && organizerData.isNotEmpty
              ? OrganizerTile(category: category, organizerData: organizerData,) //Organizer
              : index == 1 && speakerData.isNotEmpty
                  ? SpeakerTile(category: category, speakerData: speakerData,) //Speakers
                  : index == 2 && scheduleData.isNotEmpty
                      ? ScheduleTile(category: category, scheduleData: scheduleData,) //Schedule
                      : index == 3 && sponsorData.isNotEmpty
                          ? SponsorTile(category: category, sponsorData: sponsorData,) //Sponsors
                          : Container(),
        );
      },
    );
  }
}