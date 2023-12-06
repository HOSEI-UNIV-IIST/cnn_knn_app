import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../core/providers/hive_helper.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';

abstract class HomeLocalDatasource {
  Future<ThemeModeStatus> getThemeMode();
  Future<String> setThemeMode(ThemeModeStatus theme);
}

class HomeLocalDatasourceImp extends HomeLocalDatasource {
  final HiveInterface hive;

  HomeLocalDatasourceImp({required this.hive});

  @override
  Future<ThemeModeStatus> getThemeMode() async {
    try {
      HiveHelper hiveHelper = HiveHelper(hive: hive);
      String response = await hiveHelper.getValue(AppConstants.thememodeKey);

      if (kDebugMode) {
        print("THEME FROM CACHE= $response");
      }

      return EnumsExtension.formatThemeModeFromString(
          response.toString().toLowerCase());
    } catch (error) {
      throw CacheException();
    }
  }

  @override
  Future<String> setThemeMode(ThemeModeStatus theme) async {
    try {
      HiveHelper hiveHelper = HiveHelper(hive: hive);
      hiveHelper.setValue(AppConstants.thememodeKey,
          EnumsExtension.formatThemeModeToString(theme));
      return "Theme updated";
    } catch (error) {
      throw CacheException();
    }
  }
}
