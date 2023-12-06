import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/actions/app_logger.dart';

class SimpleBlocObserver extends BlocObserver {
  SimpleBlocObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      AppLogger.appLoggerDebug
          .i('onChange=>BLoC State-->${bloc.state}**Change-->$change');
    }
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    if (kDebugMode) {
      AppLogger.appLoggerDebug
          .i('onCreate=>BLoC-->$bloc**BLoC State-->${bloc.state}');
    }
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    if (kDebugMode) {
      AppLogger.appLoggerDebug
          .i('onClose=>BLoC-->$bloc**BLoC State-->${bloc.state}');
    }
    super.onClose(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (kDebugMode) {
      AppLogger.appLoggerDebug
          .i('onEvent=>BLoC State-->${bloc.state}**Event-->$event');
    }
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) {
      AppLogger.appLoggerDebug.i(
          'onTransition=>BLoC State-->${bloc.state}**Event-->${transition.event}**currentState-->${transition.currentState}**nextState-->${transition.nextState}');
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      AppLogger.appLoggerDebug.i(
          'onError=>BLoC State-->${bloc.state}**Error-->$error**stackTrace-->$stackTrace');
    }
    super.onError(bloc, error, stackTrace);
  }
}
