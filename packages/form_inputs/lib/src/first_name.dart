import 'package:formz/formz.dart';

/// Validation errors for the [FirstName] [FormzInput].
enum FirstNameValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template firstname}
/// Form input for an firstname input.
/// {@endtemplate}
class FirstName extends FormzInput<String, FirstNameValidationError> {
  /// {@macro firstname}
  const FirstName.pure() : super.pure('');

  /// {@macro firstname}
  const FirstName.dirty([super.value = '']) : super.dirty();

  @override
  FirstNameValidationError? validator(String? value) {
    return (value != null && value.isNotEmpty)
        ? null
        : FirstNameValidationError.invalid;
  }
}
