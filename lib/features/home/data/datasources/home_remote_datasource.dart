import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl({
    required this.dio,
  });
}
