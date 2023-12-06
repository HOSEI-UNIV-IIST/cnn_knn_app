import 'package:equatable/equatable.dart';

class SimilarImageEntity extends Equatable {
  final String name;
  final String title;
  final String image;
  final double price;
  final int label;

  const SimilarImageEntity({
    required this.name,
    required this.title,
    required this.image,
    required this.price,
    required this.label,
  });

  @override
  List<Object?> get props => [name, title, image, price, label];
}
