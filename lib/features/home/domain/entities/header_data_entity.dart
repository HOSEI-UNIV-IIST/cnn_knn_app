import 'package:equatable/equatable.dart';

class HeaderDataEntity extends Equatable {
  final int code;
  final String message;

  const HeaderDataEntity({
    required this.code,
    required this.message,
  });

  @override
  List<Object?> get props => [code, message];
}
