import 'package:cnn_knn_app/core/widgets/global/custom_widgets/widgets.dart';
import 'package:cnn_knn_app/core/widgets/themes/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: context.read<HomeBloc>().state.homePageIndex,
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        applyDefaultBar: true,
        applyDefaultTitle: 'CNN KNN Juice',
        child: const Center(
          child: Text("Welcome to CNN KNN Juice"),
        ));
  }
}
