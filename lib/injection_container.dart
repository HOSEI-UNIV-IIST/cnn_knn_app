import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/platform/network/network_info.dart';
import 'core/providers/hive_helper.dart';
import 'features/home/presentation/blocs/home/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// App Features
  //BLOC
  sl.registerFactory(() => HomeBloc());

  /// Business Features
  // CUBIT
  // sl.registerFactory(() => CommentCubit(sl()));

  // Use Case
  // sl.registerLazySingleton(() => DelUserProfileLocalUsecaseImpl(sl()));
  /// Repository
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
  //     localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));

  /// Datasource
  // sl.registerLazySingleton<AuthRemoteDataSource>(
  //     () => AuthRemoteDataSourceImpl(dio: sl()));

  /// Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// Providers
  sl.registerLazySingleton(() => HiveHelper(hive: sl()));

  /// External
  final Dio dio = Dio();
  final HiveInterface hive = Hive;
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => dio);
  sl.registerLazySingleton(() => hive);
}
