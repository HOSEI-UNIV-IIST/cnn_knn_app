import 'package:cnn_knn_app/core/utils/app_enums.dart';
import 'package:cnn_knn_app/core/widgets/global/app_loader.dart';
import 'package:cnn_knn_app/core/widgets/global/custom_widgets/widgets.dart';
import 'package:cnn_knn_app/core/widgets/themes/app_theme.dart';
import 'package:cnn_knn_app/core/widgets/themes/theme_mode.dart';
import 'package:cnn_knn_app/features/home/data/models/prediction_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/home/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final pickedImage = state.selectedImage;
        return CustomScaffold(
            applyDefaultBar: true,
            applyDefaultTitle: 'CNN KNN Juice',
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                if (pickedImage != null) Image.file(pickedImage),
                Divider(),
                Center(
                  child: state.pickImageStatus == BlocStatus.progress
                      ? AppLoader.circularProgressIndicator
                      : ElevatedButton(
                          onPressed: () {
                            context.read<HomeBloc>().add(PickImageEvent(false));
                          },
                          child: const Text('Camera Image'),
                        ),
                ),
                Center(
                  child: state.pickImageStatus == BlocStatus.progress
                      ? AppLoader.circularProgressIndicator
                      : ElevatedButton(
                          onPressed: () {
                            context.read<HomeBloc>().add(PickImageEvent(true));
                          },
                          child: const Text('Gallery Image'),
                        ),
                ),
                Center(
                  child: state.postPredictionStatus == BlocStatus.progress
                      ? AppLoader.circularProgressIndicator
                      : OutlinedButton(
                          onPressed: () {
                            context.read<HomeBloc>().add(PostPredictionEvent());
                          },
                          child: const Text('Make Prediction'),
                        ),
                ),
                state.postPredictionStatus == BlocStatus.success
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.sp, vertical: 8.sp),
                        child: Card(
                          color: AppThemeMode.of(context).line,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Classe: ${state.predictionData!.cnnResult.class1}',
                                style: AppThemeMode.of(context)
                                    .title1
                                    .copyWith(fontSize: 22.sp),
                              ),
                              Text(
                                "Proba: ${double.parse(state.predictionData!.cnnResult.probability1).toStringAsFixed(2)}",
                                style: AppThemeMode.of(context)
                                    .title1
                                    .copyWith(fontSize: 22.sp),
                              ),
                              Text(
                                'Score: ${double.parse(state.predictionData!.cnnResult.score1).toStringAsFixed(2)}',
                                style: AppThemeMode.of(context)
                                    .title1
                                    .copyWith(fontSize: 22.sp),
                              ),
                              Text(
                                'Distance Threshold: ${state.predictionData!.knnResult.distanceThreshold.toStringAsFixed(2)}',
                                style: AppThemeMode.of(context)
                                    .title1
                                    .copyWith(fontSize: 22.sp),
                              ),
                              Text(
                                'Proba Class: ${state.predictionData!.knnResult.probaClass.toStringAsFixed(2)}',
                                style: AppThemeMode.of(context)
                                    .title1
                                    .copyWith(fontSize: 22.sp),
                              ),
                            ],
                          ),
                        ),
                      )
                    : const SizedBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.sp),
                  child: Card(
                      color: AppThemeMode.of(context).white,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          if (state.predictionData != null)
                            for (SimilarImage item in state
                                .predictionData!.knnResult.similarImages)
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 250.sp,
                                        // width: 200.sp,
                                        child: Image.network(item.image)),
                                    Text(
                                      'Price: ${item.price} yen',
                                      style: AppThemeMode.of(context)
                                          .title1
                                          .copyWith(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w900,
                                              color: AppThemeMode.of(context)
                                                  .blue),
                                    ),
                                  ],
                                ),
                              ),
                        ],
                      )),
                ),
              ],
            ));
      },
    );
  }
}
