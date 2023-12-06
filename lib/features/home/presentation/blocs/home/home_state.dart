part of 'home_bloc.dart';

class HomeState extends Equatable {
  final BlocStatus postPredictionStatus;
  final BlocStatus pickImageStatus;
  final File? selectedImage;
  final String message;
  const HomeState({
    this.postPredictionStatus = BlocStatus.initial,
    this.pickImageStatus = BlocStatus.initial,
    this.selectedImage,
    this.message = '',
  });
  HomeState copyWith({
    BlocStatus? postPredictionStatus,
    BlocStatus? pickImageStatus,
    File? selectedImage,
    String? message,
  }) =>
      HomeState(
        postPredictionStatus: postPredictionStatus ?? this.postPredictionStatus,
        pickImageStatus: pickImageStatus ?? this.pickImageStatus,
        selectedImage: selectedImage ?? this.selectedImage,
        message: message ?? this.message,
      );

  @override
  List<Object?> get props =>
      [postPredictionStatus, pickImageStatus, selectedImage, message];

  @override
  String toString() {
    return '''
      HomeState {
        postPredictionStatus: $postPredictionStatus,
        pickImageStatus: $pickImageStatus,
        selectedImage: $selectedImage,
        message: $message,
        }
     ''';
  }
}
