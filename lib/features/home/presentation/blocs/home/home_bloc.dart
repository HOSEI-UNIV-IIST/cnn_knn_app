// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:cnn_knn_app/core/utils/app_default_models.dart';
import 'package:cnn_knn_app/core/utils/app_enums.dart';
import 'package:cnn_knn_app/features/home/data/models/prediction_data_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../domain/usecases/usecases.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostPredictionUsecaseImpl postPredictionUsecaseImpl;
  HomeBloc(this.postPredictionUsecaseImpl)
      : super(HomeState(
          pickImageStatus: BlocStatus.initial,
          postPredictionStatus: BlocStatus.initial,
          selectedImage: null,
          predictionData: AppDefaultModel.defaultPredictionDataModel,
        )) {
    on<PostPredictionEvent>(_onPostPredictionEvent);
    on<PickImageEvent>(_onPickImageEvent);
  }

  Future<void> _onPostPredictionEvent(
      PostPredictionEvent event, Emitter<HomeState> emit) async {
    try {
      File file = state.selectedImage ?? File('');

      emit(state.copyWith(postPredictionStatus: BlocStatus.progress));

      final result = await postPredictionUsecaseImpl(file);
      result.fold((l) {
        emit(state.copyWith(
            postPredictionStatus: BlocStatus.failure, message: l.message));
      }, (r) {
        emit(state.copyWith(
            postPredictionStatus: BlocStatus.success,
            predictionData: r,
            message: r.headerData.message));
        Get.snackbar('Prediction', r.headerData.message);
      });
    } on CacheException catch (e) {
      emit(state.copyWith(
          postPredictionStatus: BlocStatus.failure, message: e.toString()));
    }
  }

  Future<void> _onPickImageEvent(
      PickImageEvent event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(pickImageStatus: BlocStatus.progress));
      final result = await getImage(sourceGallery: event.sourceGallery);
      if (result == null) {
        emit(state.copyWith(
            pickImageStatus: BlocStatus.failure,
            message: 'Unexpected error, please try again!'));
      } else {
        emit(state.copyWith(
            pickImageStatus: BlocStatus.success,
            selectedImage: File(result.path)));
      }
    } on PlatformException catch (e) {
      emit(state.copyWith(
          pickImageStatus: BlocStatus.failure, message: e.toString()));
    }
  }

  Future<XFile?> getImage({bool sourceGallery = true}) async {
    final picker = ImagePicker();

    final pickedFile = await picker.pickImage(
        source: sourceGallery ? ImageSource.gallery : ImageSource.camera,
        imageQuality: 50,
        maxHeight: 224,
        maxWidth: 224,
        preferredCameraDevice: CameraDevice.rear,
        requestFullMetadata: true);

    return pickedFile;
  }
}
