// import 'package:dartz/dartz.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/app_enums.dart' show ThemeModeStatus;
import '../repositories/home_repository.dart';

/// This is a Dart class that implements a use case for setting the theme mode in a home repository.
class SetThemeModeUsecaseImpl extends UseCase<String, ThemeModeStatus> {
  late final HomeRepository homeRepository;
  SetThemeModeUsecaseImpl(this.homeRepository);

  @override
  Future<Either<Failure, String>> call(ThemeModeStatus params) async {
    return await homeRepository.setThemeMode(theme: params);
  }
}
