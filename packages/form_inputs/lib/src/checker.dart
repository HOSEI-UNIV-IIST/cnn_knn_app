import 'package:formz/formz.dart';

/// Validation errors for the [Checker] [FormzInput].
enum CheckerValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template checker}
/// Form input for an checker input.
/// {@endtemplate}
class Checker extends FormzInput<bool, CheckerValidationError> {
  /// {@macro checker}
  const Checker.pure() : super.pure(true);

  /// {@macro checker}
  const Checker.dirty([super.value = true]) : super.dirty();

  @override
  CheckerValidationError? validator(bool? value) {
    return (value != null && value) ? null : CheckerValidationError.invalid;
  }
}
