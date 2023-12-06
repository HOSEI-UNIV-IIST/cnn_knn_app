// import 'package:dartz/dartz.dart';

import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../data/models/prediction_data_model.dart';
import '../repositories/home_repository.dart';

class PostPredictionUsecaseImpl extends UseCase<PredictionDataModel, File> {
  late final HomeRepository homeRepository;
  PostPredictionUsecaseImpl(this.homeRepository);

  @override
  Future<Either<Failure, PredictionDataModel>> call(File params) async {
    return await homeRepository.postPrediction(file: params);
  }
}
