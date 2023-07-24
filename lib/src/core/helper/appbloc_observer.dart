import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:react_conf/src/core/utility/log.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) appPrint(change.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    appPrint(transition.toString());
  }
}