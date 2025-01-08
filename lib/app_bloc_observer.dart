import 'package:bloc/bloc.dart'
    show Bloc, BlocBase, BlocObserver, Change, Transition;
import 'package:credivis_mobile/core/utils/logger.dart';



final class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    logger.d('onCreate: This is a ${bloc.runtimeType}');

    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    logger.d('onClose: ${bloc.runtimeType} closed');

    super.onClose(bloc);
  }

  @override
  void onError(
    BlocBase<dynamic> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    logger.d('onError: ${bloc.runtimeType} closed');

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    logger.d('''
      onTransition: There was a transition from
      ${transition.currentState} to ${transition.nextState}
          ''');

    super.onTransition(bloc, transition);
  }

  @override
  void onChange(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) {
    logger.d('''
      onChange: ${bloc.runtimeType} changed from
      ${change.currentState} to ${change.nextState}
          ''');

    super.onChange(bloc, change);
  }

  @override
  void onEvent(
    Bloc<dynamic, dynamic> bloc,
    Object? event,
  ) {
    logger.d('onEvent: A $event event happened in ${bloc.runtimeType}');

    super.onEvent(bloc, event);
  }
}
