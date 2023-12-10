import '../../features/home/data/models/prediction_data_model.dart';

class AppDefaultModel {
  static PredictionDataModel defaultPredictionDataModel =
      const PredictionDataModel(
          headerData: HeaderData(code: 404, message: 'error'),
          cnnResult:
              CnnResult(
                  class1: '',
                  score1: '',
                  probability1: '',
                  class2: '',
                  score2: '',
                  probability2: ''),
          knnResult: KnnResult(
              distanceThreshold: 0, probaClass: 0, similarImages: []));
}
