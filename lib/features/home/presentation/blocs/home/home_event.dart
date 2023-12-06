part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChangeHomeEvent extends HomeEvent {
  final int index;
  ChangeHomeEvent(this.index);

  @override
  List<Object?> get props => [index];
}
