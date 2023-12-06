import 'package:dartz/dartz.dart';

import 'package:cnn_knn_app/core/error/failures.dart';
import 'package:cnn_knn_app/core/utils/app_enums.dart';

import '../../domain/repositories/home_repository.dart';
import '../datasources/data_sources.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDatasource localDataSource;

  HomeRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, ThemeModeStatus>> getThemeMode() async {
    try {
      return Right(await localDataSource.getThemeMode());
    } catch (e) {
      return const Left(CacheFailure(message: "Cache empty"));
    }
  }

  @override
  Future<Either<Failure, String>> setThemeMode(
      {required ThemeModeStatus theme}) async {
    try {
      return Right(await localDataSource.setThemeMode(theme));
    } catch (e) {
      return const Left(CacheFailure(message: "Update theme failed"));
    }
  }
}
