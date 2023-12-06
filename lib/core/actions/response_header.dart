import 'package:equatable/equatable.dart';

/// The `ResponseHeader` class represents a response header with a code and message, and provides
/// methods for copying, converting to/from JSON, and comparing instances.
class ResponseHeader extends Equatable {
  final int code;
  final String message;

/// The `const ResponseHeader()` constructor is creating an instance of the `ResponseHeader` class with
/// the provided `code` and `message` values. The `required` keyword before the parameters indicates
/// that these values must be provided when creating an instance of the class. The `const` keyword
/// before the constructor indicates that the instance is immutable, meaning its values cannot be
/// changed once it is created.
  const ResponseHeader({
    required this.code,
    required this.message,
  });

 /// The `copyWith` function creates a new `ResponseHeader` object with updated values for `code` and
 /// `message`, while keeping the other values the same.
 /// 
 /// Args:
 ///   code (int): An optional integer representing the response code. If provided, it will be used to
 /// create a new ResponseHeader object with the updated code value. If not provided, the existing code
 /// value will be used.
 ///   message (String): The `message` parameter is a nullable `String` that represents the message of
 /// the response header. It is used to update the message of the `ResponseHeader` object. If the
 /// `message` parameter is not provided or is `null`, the existing message value of the
 /// `ResponseHeader` object
  ResponseHeader copyWith({
    int? code,
    String? message,
  }) =>
      ResponseHeader(
        code: code ?? this.code,
        message: message ?? this.message,
      );
/// The function is a factory constructor in Dart that creates an instance of the ResponseHeader class
/// from a JSON object.
/// 
/// Args:
///   json (Map<String, dynamic>): A map containing key-value pairs where the keys are of type String
/// and the values can be of any type. This map represents the JSON object that will be used to create
/// an instance of the ResponseHeader class.

  factory ResponseHeader.fromJson(Map<String, dynamic> json) => ResponseHeader(
        code: json["code"],
        message: json["message"],
      );

/// The function converts a Dart object to a JSON object.
  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };

  @override
  List<Object?> get props => [code, message];
}
