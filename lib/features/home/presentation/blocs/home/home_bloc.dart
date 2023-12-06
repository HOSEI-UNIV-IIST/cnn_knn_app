// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:cnn_knn_app/core/utils/app_enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/error/exceptions.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(const HomeState(
            pickImageStatus: BlocStatus.initial,
            postPredictionStatus: BlocStatus.initial,
            selectedImage: null)) {
    on<PostPredictionEvent>(_onPostPredictionEvent);
    on<PickImageEvent>(_onPickImageEvent);
  }

  Future<void> _onPostPredictionEvent(
      PostPredictionEvent event, Emitter<HomeState> emit) async {
    // try {
    //   emit(state.copyWith(readCache: BlocStatus.progress));
    //   final result = await getNewsLocalUsecaseImpl(NoParams());
    //   result.fold((l) {
    //     emit(state.copyWith(readCache: BlocStatus.failure, message: l.message));
    //   }, (r) {
    //     emit(state.copyWith(
    //         readCache: BlocStatus.success,
    //         newsList: r,
    //         message: 'Successful data loading'));
    //   });
    // } on CacheException catch (e) {
    //   emit(
    //       state.copyWith(readCache: BlocStatus.failure, message: e.toString()));
    // }
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
