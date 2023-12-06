import 'dart:io';

import 'package:cnn_knn_app/features/home/presentation/blocs/home/home_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_time_ago/get_time_ago.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get_navigation/get_navigation.dart' as nav;

import 'core/providers/routes_provider.dart';
import 'core/utils/app_constants.dart';
import 'core/widgets/themes/app_theme.dart';
import 'injection_container.dart' as inject_con;

import 'provider_list.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  await inject_con.init();

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(AppConstants.appLocalDb);
  // Bloc.observer = SimpleBlocObserver();
  // To solve CERTIFICATE_VERIFY_FAILED
  HttpOverrides.global = MyHttpOverrides();
  GetTimeAgo.setDefaultLocale(Platform.localeName.split('_')[0]);

  runApp(EasyLocalization(supportedLocales: const [
    Locale('en'),
    Locale('fr'),
  ], path: 'assets/i18n', child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MultiBlocProvider(
              providers: myProviders,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return GetMaterialApp(
                    navigatorKey: Get.key,
                    enableLog: true,
                    defaultTransition: nav.Transition.cupertino,
                    title: 'CNN KNN Juice',
                    checkerboardRasterCacheImages: true,
                    debugShowCheckedModeBanner: false,
                    theme: Appthemes.lightThemeData(context),
                    themeMode: ThemeMode.light,
                    initialRoute: RoutesProvider.homePage,
                    getPages: RoutesProvider.routes,
                    navigatorObservers: const [],
                  );
                },
              ),
            ));
  }
}
