import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:react_conf/src/features/conference/data/conference_repository.dart';
import 'package:react_conf/src/features/conference/domain/conference_model.dart';

part 'conference_event.dart';
part 'conference_state.dart';

class ConferenceBloc extends Bloc<ConferenceEvent, ConferenceState> {
  final ConferenceRepository conferenceRepository;

  ConferenceBloc({required this.conferenceRepository}) : super(const ConferenceState()) {
    on<GetConferenceData>((event, emit) async => await _mapGetConferenceDataEventToState(event, emit));
  }

  //::::::::::::::::::::::::::: Get Conference Event :::::::::::::::::::::::::::
  Future<void> _mapGetConferenceDataEventToState(
    GetConferenceData event,
    Emitter<ConferenceState> emit,
  ) async {
    ConferenceModel data = await conferenceRepository.fetchData();
    emit(state.copyWith(
      conferenceData: data,
      isLoading: false,
    ));
  }
}
