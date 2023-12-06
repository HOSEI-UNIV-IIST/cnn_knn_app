import 'dart:io';

import 'package:cnn_knn_app/features/home/data/models/prediction_data_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';

abstract class HomeRepository {
  Future<Either<Failure, PredictionDataModel>> postPrediction(
      {required File file});
}
