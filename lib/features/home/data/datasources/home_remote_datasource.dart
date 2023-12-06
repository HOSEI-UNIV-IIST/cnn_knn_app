import 'dart:io';

import 'package:cnn_knn_app/features/home/data/models/prediction_data_model.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/api_helper.dart';
import '../../../../core/providers/api_routes.dart';
import '../../../../core/utils/app_default_models.dart';

abstract class HomeRemoteDataSource {
  Future<PredictionDataModel> posHomeRemote(File file);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  late final Dio dio;

  HomeRemoteDataSourceImpl({required this.dio});

  @override
  Future<PredictionDataModel> posHomeRemote(File file) async {
    try {
      String fileName = file.path.split('/').last;

      FormData data = FormData.fromMap({
        "file": await MultipartFile.fromFile(
          file.path,
          filename: fileName,
          contentType: MediaType("image", "jpeg"),
        ),
      });

      final response = await APIHelper(
        dio: dio,
        apiBaseUrl: ApiRoutes.baseUrl,
      ).upload(ApiRoutes.prediction, body: data);
      final statusCode = response.statusCode ?? 404;
      final statusMessage = response.statusMessage ?? 'error';

      PredictionDataModel predctionModel =
          AppDefaultModel.defaultPredictionDataModel;

      predctionModel = predictionDataModelFromJson(response.data);
      predctionModel = predctionModel.copyWith(
          headerData: HeaderData(code: statusCode, message: statusMessage));

      return predctionModel;
    } on DioException catch (error) {
      throw RequestException.fromDioError(error);
    }
  }
}
