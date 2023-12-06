import 'dart:io';

import 'package:cnn_knn_app/core/error/exceptions.dart';
import 'package:cnn_knn_app/core/utils/app_default_models.dart';
import 'package:dartz/dartz.dart';

import 'package:cnn_knn_app/core/error/failures.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/platform/network/network_info.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/data_sources.dart';
import '../models/prediction_data_model.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PredictionDataModel>> postPrediction(
      {required File file}) async {
    if (await networkInfo.isConnected) {
      try {
        final predictedData = await remoteDataSource.posHomeRemote(file);
        if (kDebugMode) {
          print("remoteNews--> ${predictedData.toJson()}");
        }

        return Right(predictedData);
      } on RequestException catch (e) {
        return Left(
            ServerFailure(statusCode: e.statusCode!, message: e.message));
      }
    } else {
      try {
        if (kDebugMode) {
          print("noneNews--> ````🚨````");
        }
        return Right(AppDefaultModel.defaultPredictionDataModel);
      } on CacheException {
        return const Left(CacheFailure(message: "No data cached found"));
      }
    }
  }
}
