import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../error/exceptions.dart';
import '../utils/app_constants.dart';

class HiveHelper {
  final HiveInterface hive;
  static const hiveDatabaseKey = AppConstants.appLocalDb;

  HiveHelper({required this.hive});

  List<Map<String, dynamic>> getQueryLocalDataList(String queryTypeName) {
    List<Map<String, dynamic>> uniquelist = [];
    try {
      if (hive.isBoxOpen(hiveDatabaseKey)) {
        final localDatabase = hive.box(hiveDatabaseKey);
        if (localDatabase.values.isNotEmpty) {
          final Iterable<Map<String, dynamic>> mapIterable =
              localDatabase.values.whereType<Map<String, dynamic>>();
          final Iterable<Map<String, dynamic>> typeIterable = mapIterable
              .where((element) => element["__typename"] == queryTypeName);
          final Set<Map<String, dynamic>> seen = <Map<String, dynamic>>{};
          uniquelist =
              typeIterable.where((account) => seen.add(account)).toList();
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception getLocalData : $e");
      }
      throw CacheException();
    }
    return uniquelist;
  }

  Future<void> setValue(String key, dynamic value) async {
    try {
      if (hive.isBoxOpen(hiveDatabaseKey)) {
        final localDatabase = hive.box(hiveDatabaseKey);
        await localDatabase.put(key, value);
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception set Hive Value : $e");
      }
      throw CacheException();
    }
  }

  dynamic getValue(String key) {
    try {
      if (hive.isBoxOpen(AppConstants.appLocalDb)) {
        final localDatabase = hive.box(AppConstants.appLocalDb);
        final dynamic value = localDatabase.get(key);
        if (kDebugMode) {
          print(value);
        }
        return value;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception get Hive Value : $e");
      }
      throw CacheException();
    }
  }

  dynamic deleteValue(String key) {
    try {
      if (hive.isBoxOpen(AppConstants.appLocalDb)) {
        final localDatabase = hive.box(AppConstants.appLocalDb);
        localDatabase.delete(key);
        return "User credential deleted";
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception delete Hive Value : $e");
      }
      throw CacheException();
    }
  }
}
