part of 'home_bloc.dart';

class HomeState extends Equatable {
  final BlocStatus postPredictionStatus;
  final BlocStatus pickImageStatus;
  final File? selectedImage;
  final String message;
  PredictionDataModel? predictionData =
      AppDefaultModel.defaultPredictionDataModel;

  HomeState({
    this.postPredictionStatus = BlocStatus.initial,
    this.pickImageStatus = BlocStatus.initial,
    this.selectedImage,
    this.message = '',
    this.predictionData,
  });
  HomeState copyWith({
    BlocStatus? postPredictionStatus,
    BlocStatus? pickImageStatus,
    File? selectedImage,
    String? message,
    PredictionDataModel? predictionData,
  }) =>
      HomeState(
        postPredictionStatus: postPredictionStatus ?? this.postPredictionStatus,
        pickImageStatus: pickImageStatus ?? this.pickImageStatus,
        selectedImage: selectedImage ?? this.selectedImage,
        message: message ?? this.message,
        predictionData: predictionData ?? this.predictionData,
      );

  @override
  List<Object?> get props => [
        postPredictionStatus,
        pickImageStatus,
        selectedImage,
        message,
        predictionData
      ];

  @override
  String toString() {
    return '''
      HomeState {
        postPredictionStatus: $postPredictionStatus,
        pickImageStatus: $pickImageStatus,
        selectedImage: $selectedImage,
        message: $message,
        predictionData: $predictionData,
        }
     ''';
  }
}
