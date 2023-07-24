part of 'conference_bloc.dart';


abstract class ConferenceEvent extends Equatable {
  const ConferenceEvent();
}

class GetConferenceData extends ConferenceEvent {
  const GetConferenceData();
  @override
  List<Object?> get props => [];
}
