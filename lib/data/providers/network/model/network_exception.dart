import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.timeOutExeption() = _TimeoutException;
  const factory NetworkException.unknownExeption() = _UnknownException;
  const factory NetworkException.httpException() = _HttpException;
  const factory NetworkException.FormatException() = _FormatException;
}
