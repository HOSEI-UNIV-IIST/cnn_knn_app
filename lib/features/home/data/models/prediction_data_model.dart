// To parse this JSON data, do
//
//     final predictionDataModel = predictionDataModelFromJson(jsonString);

// ignore_for_file: annotate_overrides, overridden_fields

import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/entites.dart';

PredictionDataModel predictionDataModelFromJson(String str) =>
    PredictionDataModel.fromJson(json.decode(str));

String predictionDataModelToJson(PredictionDataModel data) =>
    json.encode(data.toJson());

class PredictionDataModel extends Equatable {
  final HeaderData headerData;
  final CnnResult cnnResult;
  final KnnResult knnResult;

  const PredictionDataModel({
    required this.headerData,
    required this.cnnResult,
    required this.knnResult,
  });

  PredictionDataModel copyWith({
    HeaderData? headerData,
    CnnResult? cnnResult,
    KnnResult? knnResult,
  }) =>
      PredictionDataModel(
        headerData: headerData ?? this.headerData,
        cnnResult: cnnResult ?? this.cnnResult,
        knnResult: knnResult ?? this.knnResult,
      );

  factory PredictionDataModel.fromJson(Map<String, dynamic> json) =>
      PredictionDataModel(
        headerData: const HeaderData(code: 404, message: ''),
        cnnResult: CnnResult.fromJson(json["cnn_result"]),
        knnResult: KnnResult.fromJson(json["knn_result"]),
      );

  Map<String, dynamic> toJson() => {
        "header_data": headerData.toJson(),
        "cnn_result": cnnResult.toJson(),
        "knn_result": knnResult.toJson(),
      };

  @override
  List<Object?> get props => [headerData, cnnResult, knnResult];
}

class HeaderData extends HeaderDataEntity {
  final int code;
  final String message;

  const HeaderData({
    required this.code,
    required this.message,
  }) : super(code: code, message: message);

  HeaderData copyWith({
    int? code,
    String? message,
  }) =>
      HeaderData(
        code: code ?? this.code,
        message: message ?? this.message,
      );

  factory HeaderData.fromJson(Map<String, dynamic> json) => HeaderData(
        code: json["code"] ?? '',
        message: json["message"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}

class CnnResult extends CnnResultEntity {
  final String class1;
  final String score1;
  final String probability1;
  final String class2;
  final String score2;
  final String probability2;

  const CnnResult({
    required this.class1,
    required this.score1,
    required this.probability1,
    required this.class2,
    required this.score2,
    required this.probability2
  }) : super(
            class1: class1,
            score1: score1,
            probability1: probability1,
            class2: class2,
            score2: score2,
            probability2: probability2);

  CnnResult copyWith({
    String? class1,
    String? score1,
    String? probability1,
    String? class2,
    String? score2,
    String? probability2
  }) =>
      CnnResult(
        class1: class1 ?? this.class1,
        score1: score1 ?? this.score1,
        probability1: probability1 ?? this.probability1,
        class2: class2 ?? this.class2,
        score2: score2 ?? this.score2,
        probability2: probability2 ?? this.probability2
      );

  factory CnnResult.fromJson(Map<String, dynamic> json) => CnnResult(
        class1: json["Class_1"],
        score1: json["Score_1"],
        probability1: json["Probability_1"],
        class2: json["Class_2"],
        score2: json["Score_2"],
        probability2: json["Probability_2"]
      );

  Map<String, dynamic> toJson() => {
        "Class_1": class1,
        "Score_1": score1,
        "Probability_1": probability1,
        "Class_2": class2,
        "Score_2": score2,
        "Probability_2": probability2
      };
}

class KnnResult extends KnnResultEntity {
  final double distanceThreshold;
  final double probaClass;
  final List<SimilarImage> similarImages;

  const KnnResult({
    required this.distanceThreshold,
    required this.probaClass,
    required this.similarImages,
  }) : super(
            distanceThreshold: distanceThreshold,
            probaClass: probaClass,
            similarImages: similarImages);

  KnnResult copyWith({
    double? distanceThreshold,
    double? probaClass,
    List<SimilarImage>? similarImages,
  }) =>
      KnnResult(
        distanceThreshold: distanceThreshold ?? this.distanceThreshold,
        probaClass: probaClass ?? this.probaClass,
        similarImages: similarImages ?? this.similarImages,
      );

  factory KnnResult.fromJson(Map<String, dynamic> json) => KnnResult(
        distanceThreshold: json["DistanceThreshold"]?.toDouble(),
        probaClass: json["ProbaClass"]?.toDouble(),
        similarImages: List<SimilarImage>.from(
            json["SimilarImages"].map((x) => SimilarImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "DistanceThreshold": distanceThreshold,
        "ProbaClass": probaClass,
        "SimilarImages":
            List<dynamic>.from(similarImages.map((x) => x.toJson())),
      };
}

class SimilarImage extends SimilarImageEntity {
  final String name;
  final String title;
  final String image;
  final double price;
  final int label;

  const SimilarImage({
    required this.name,
    required this.title,
    required this.image,
    required this.price,
    required this.label,
  }) : super(
            name: name, title: title, image: image, price: price, label: label);

  SimilarImage copyWith({
    String? name,
    String? title,
    String? image,
    double? price,
    int? label,
  }) =>
      SimilarImage(
        name: name ?? this.name,
        title: title ?? this.title,
        image: image ?? this.image,
        price: price ?? this.price,
        label: label ?? this.label,
      );

  factory SimilarImage.fromJson(Map<String, dynamic> json) => SimilarImage(
        name: json["name"],
        title: json["title"],
        image: json["image"],
        price: json["price"]?.toDouble(),
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "image": image,
        "price": price,
        "label": label,
      };
}
