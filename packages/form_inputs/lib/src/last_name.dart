import 'package:formz/formz.dart';

/// Validation errors for the [LastName] [FormzInput].
enum LastNameValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template lastname}
/// Form input for an lastname input.
/// {@endtemplate}
class LastName extends FormzInput<String, LastNameValidationError> {
  /// {@macro lastname}
  const LastName.pure() : super.pure('');

  /// {@macro lastname}
  const LastName.dirty([super.value = '']) : super.dirty();

  @override
  LastNameValidationError? validator(String? value) {
    return null;
  }
}
