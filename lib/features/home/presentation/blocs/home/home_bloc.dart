// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:cnn_knn_app/core/utils/app_enums.dart';
import 'package:cnn_knn_app/core/utils/app_indexes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(const HomeState(
            homePageIndex: 0, homePageStatus: HomePageStatus.home)) {
    on<ChangeHomeEvent>((event, emitter) => _changeHomeWindow(event: event));
  }

  _changeHomeWindow({required ChangeHomeEvent event}) {
    if (event.index == state.homePageIndex) return;
    HomePageStatus status;
    switch (event.index) {
      case AppIndexes.bottomBarHome:
        status = HomePageStatus.home;
        break;
      case AppIndexes.bottomBarInformation:
        status = HomePageStatus.information;
        break;
      case AppIndexes.bottomBarMeetting:
        status = HomePageStatus.meeting;
        break;
      case AppIndexes.bottomBarContribution:
        status = HomePageStatus.cotisation;
        break;
      default:
        status = HomePageStatus.home;
    }
    return emit(state.copyWith(status, event.index));
  }
}
