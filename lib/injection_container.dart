import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/platform/network/network_info.dart';
import 'core/providers/hive_helper.dart';
import 'features/home/data/datasources/data_sources.dart';
import 'features/home/data/repositories/home_repository_impl.dart';
import 'features/home/domain/repositories/home_repository.dart';
import 'features/home/domain/usecases/usecases.dart';
import 'features/home/presentation/blocs/home/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// App Features
  //BLOC
  sl.registerFactory(() => HomeBloc(sl()));

  /// Business Features
  // CUBIT
  // sl.registerFactory(() => CommentCubit(sl()));

  // Use Case
  sl.registerLazySingleton(() => PostPredictionUsecaseImpl(sl()));

  /// Repository
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
  //     localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));

  /// Repository
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
  );

  /// Datasource
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(dio: sl()));

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
