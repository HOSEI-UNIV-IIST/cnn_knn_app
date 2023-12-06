part of 'home_bloc.dart';

class HomeState extends Equatable {
  final HomePageStatus homePageStatus;
  final int homePageIndex;
  const HomeState({
    //this.homePageStatus = HomePageStatus.home,
    this.homePageStatus = HomePageStatus.information,
    //this.homePageIndex = AppIndexes.bottomBarHome,
    this.homePageIndex = AppIndexes.bottomBarInformation,
  });
  HomeState copyWith(HomePageStatus? status, int? index) =>
      HomeState(
          homePageStatus: status ?? homePageStatus,
          homePageIndex: index ?? homePageIndex);

  @override
  List<Object?> get props => [homePageStatus, homePageIndex];

  @override
  String toString() {
    return '''HomeState { homePageStatus: $homePageStatus, homePageIndex: $homePageIndex}''';
  }
}
