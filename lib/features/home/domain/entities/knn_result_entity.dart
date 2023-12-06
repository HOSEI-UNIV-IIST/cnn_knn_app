import 'package:cnn_knn_app/features/home/domain/entities/similar_image_entity.dart';
import 'package:equatable/equatable.dart';

class KnnResultEntity extends Equatable {
  final double distanceThreshold;
  final double probaClass;
  final List<SimilarImageEntity> similarImages;

  const KnnResultEntity({
    required this.distanceThreshold,
    required this.probaClass,
    required this.similarImages,
  });

  @override
  List<Object?> get props => [distanceThreshold, probaClass, similarImages];
}
