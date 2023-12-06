import 'package:equatable/equatable.dart';

class CnnResultEntity extends Equatable {
  final String class1;
  final String score1;
  final String probability1;
  final String class2;
  final String score2;
  final String probability2;
  final String class3;
  final String score3;
  final String probability3;

  const CnnResultEntity({
    required this.class1,
    required this.score1,
    required this.probability1,
    required this.class2,
    required this.score2,
    required this.probability2,
    required this.class3,
    required this.score3,
    required this.probability3,
  });

  @override
  List<Object?> get props => [
        class1,
        score1,
        probability1,
        class2,
        score2,
        probability2,
        class3,
        score3,
        probability3
      ];
}
