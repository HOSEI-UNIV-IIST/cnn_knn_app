import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:cnn_knn_app/core/error/failures.dart';

import '../../domain/repositories/home_repository.dart';
import '../datasources/data_sources.dart';
import '../models/prediction_data_model.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, PredictionDataModel>> postPrediction(
      {required File file}) async {
    try {
      return Right(await remoteDataSource.posHomeRemote(file));
    } catch (e) {
      return const Left(CacheFailure(message: "Update theme failed"));
    }
  }
}
