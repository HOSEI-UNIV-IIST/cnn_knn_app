import 'package:cnn_knn_app/core/utils/app_enums.dart';
import 'package:cnn_knn_app/core/widgets/global/app_loader.dart';
import 'package:cnn_knn_app/core/widgets/global/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                if (pickedImage != null)
                  Flexible(
                    // =============> ORIGINAL IMAGE ===========================
                    child: Row(
                      children: [
                        Expanded(
                          child: pickedImage != null
                              ? Image.file(pickedImage)
                              : SizedBox(height: 0),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                Center(
                  child: state.pickImageStatus == BlocStatus.progress
                      ? AppLoader.circularProgressIndicator
                      : TextButton(
                          onPressed: () {
                            context.read<HomeBloc>().add(PickImageEvent(true));
                          },
                          child: Text('Select image'),
                        ),
                ),
              ],
            ));
      },
    );
  }
}
