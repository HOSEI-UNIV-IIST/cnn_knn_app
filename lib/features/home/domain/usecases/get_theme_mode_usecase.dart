// import 'package:dartz/dartz.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/app_enums.dart' show ThemeModeStatus;
import '../repositories/home_repository.dart';

/// The `GetThemeModeUsecaseImpl` class is a implementation of a use case that retrieves the
/// theme mode status from a `HomeRepository`.
class GetThemeModeUsecaseImpl extends UseCase<ThemeModeStatus, NoParams> {
  late final HomeRepository homeRepository;
  GetThemeModeUsecaseImpl(this.homeRepository);

  @override
  Future<Either<Failure, ThemeModeStatus>> call(NoParams params) async {
    return await homeRepository.getThemeMode();
  }
}
