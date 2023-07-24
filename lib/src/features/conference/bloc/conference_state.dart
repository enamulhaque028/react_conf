part of 'conference_bloc.dart';

class ConferenceState extends Equatable {
  const ConferenceState({
    this.isLoading = true,
    this.conferenceData,
  });

  final bool isLoading;
  final ConferenceModel? conferenceData;

  ConferenceState copyWith({
    bool? isLoading,
    ConferenceModel? conferenceData,
  }) {
    return ConferenceState(
      isLoading: isLoading ?? this.isLoading,
      conferenceData: conferenceData ?? this.conferenceData,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    conferenceData,
  ];
}
