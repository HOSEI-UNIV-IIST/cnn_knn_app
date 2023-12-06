import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/app_enums.dart';

/// The abstract class HomeRepository defines methods for setting and getting the theme mode status.
abstract class HomeRepository {
  Future<Either<Failure, String>> setThemeMode(
      {required ThemeModeStatus theme});
  Future<Either<Failure, ThemeModeStatus>> getThemeMode();
}
