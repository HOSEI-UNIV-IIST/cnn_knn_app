part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PostPredictionEvent extends HomeEvent {
  final File payload;
  PostPredictionEvent(this.payload);
  @override
  List<Object?> get props => [payload];
}

class PickImageEvent extends HomeEvent {
  final bool sourceGallery;
  PickImageEvent(this.sourceGallery);
  @override
  List<Object?> get props => [sourceGallery];
}
