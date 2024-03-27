// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeOutExeption,
    required TResult Function() unknownExeption,
    required TResult Function() httpException,
    required TResult Function() FormatException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeOutExeption,
    TResult? Function()? unknownExeption,
    TResult? Function()? httpException,
    TResult? Function()? FormatException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeOutExeption,
    TResult Function()? unknownExeption,
    TResult Function()? httpException,
    TResult Function()? FormatException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeoutException value) timeOutExeption,
    required TResult Function(_UnknownException value) unknownExeption,
    required TResult Function(_HttpException value) httpException,
    required TResult Function(_FormatException value) FormatException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeoutException value)? timeOutExeption,
    TResult? Function(_UnknownException value)? unknownExeption,
    TResult? Function(_HttpException value)? httpException,
    TResult? Function(_FormatException value)? FormatException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeoutException value)? timeOutExeption,
    TResult Function(_UnknownException value)? unknownExeption,
    TResult Function(_HttpException value)? httpException,
    TResult Function(_FormatException value)? FormatException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res, NetworkException>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res, $Val extends NetworkException>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimeoutExceptionImplCopyWith<$Res> {
  factory _$$TimeoutExceptionImplCopyWith(_$TimeoutExceptionImpl value,
          $Res Function(_$TimeoutExceptionImpl) then) =
      __$$TimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$TimeoutExceptionImpl>
    implements _$$TimeoutExceptionImplCopyWith<$Res> {
  __$$TimeoutExceptionImplCopyWithImpl(_$TimeoutExceptionImpl _value,
      $Res Function(_$TimeoutExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeoutExceptionImpl implements _TimeoutException {
  const _$TimeoutExceptionImpl();

  @override
  String toString() {
    return 'NetworkException.timeOutExeption()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeOutExeption,
    required TResult Function() unknownExeption,
    required TResult Function() httpException,
    required TResult Function() FormatException,
  }) {
    return timeOutExeption();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeOutExeption,
    TResult? Function()? unknownExeption,
    TResult? Function()? httpException,
    TResult? Function()? FormatException,
  }) {
    return timeOutExeption?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeOutExeption,
    TResult Function()? unknownExeption,
    TResult Function()? httpException,
    TResult Function()? FormatException,
    required TResult orElse(),
  }) {
    if (timeOutExeption != null) {
      return timeOutExeption();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeoutException value) timeOutExeption,
    required TResult Function(_UnknownException value) unknownExeption,
    required TResult Function(_HttpException value) httpException,
    required TResult Function(_FormatException value) FormatException,
  }) {
    return timeOutExeption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeoutException value)? timeOutExeption,
    TResult? Function(_UnknownException value)? unknownExeption,
    TResult? Function(_HttpException value)? httpException,
    TResult? Function(_FormatException value)? FormatException,
  }) {
    return timeOutExeption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeoutException value)? timeOutExeption,
    TResult Function(_UnknownException value)? unknownExeption,
    TResult Function(_HttpException value)? httpException,
    TResult Function(_FormatException value)? FormatException,
    required TResult orElse(),
  }) {
    if (timeOutExeption != null) {
      return timeOutExeption(this);
    }
    return orElse();
  }
}

abstract class _TimeoutException implements NetworkException {
  const factory _TimeoutException() = _$TimeoutExceptionImpl;
}

/// @nodoc
abstract class _$$UnknownExceptionImplCopyWith<$Res> {
  factory _$$UnknownExceptionImplCopyWith(_$UnknownExceptionImpl value,
          $Res Function(_$UnknownExceptionImpl) then) =
      __$$UnknownExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$UnknownExceptionImpl>
    implements _$$UnknownExceptionImplCopyWith<$Res> {
  __$$UnknownExceptionImplCopyWithImpl(_$UnknownExceptionImpl _value,
      $Res Function(_$UnknownExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownExceptionImpl implements _UnknownException {
  const _$UnknownExceptionImpl();

  @override
  String toString() {
    return 'NetworkException.unknownExeption()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeOutExeption,
    required TResult Function() unknownExeption,
    required TResult Function() httpException,
    required TResult Function() FormatException,
  }) {
    return unknownExeption();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeOutExeption,
    TResult? Function()? unknownExeption,
    TResult? Function()? httpException,
    TResult? Function()? FormatException,
  }) {
    return unknownExeption?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeOutExeption,
    TResult Function()? unknownExeption,
    TResult Function()? httpException,
    TResult Function()? FormatException,
    required TResult orElse(),
  }) {
    if (unknownExeption != null) {
      return unknownExeption();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeoutException value) timeOutExeption,
    required TResult Function(_UnknownException value) unknownExeption,
    required TResult Function(_HttpException value) httpException,
    required TResult Function(_FormatException value) FormatException,
  }) {
    return unknownExeption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeoutException value)? timeOutExeption,
    TResult? Function(_UnknownException value)? unknownExeption,
    TResult? Function(_HttpException value)? httpException,
    TResult? Function(_FormatException value)? FormatException,
  }) {
    return unknownExeption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeoutException value)? timeOutExeption,
    TResult Function(_UnknownException value)? unknownExeption,
    TResult Function(_HttpException value)? httpException,
    TResult Function(_FormatException value)? FormatException,
    required TResult orElse(),
  }) {
    if (unknownExeption != null) {
      return unknownExeption(this);
    }
    return orElse();
  }
}

abstract class _UnknownException implements NetworkException {
  const factory _UnknownException() = _$UnknownExceptionImpl;
}

/// @nodoc
abstract class _$$HttpExceptionImplCopyWith<$Res> {
  factory _$$HttpExceptionImplCopyWith(
          _$HttpExceptionImpl value, $Res Function(_$HttpExceptionImpl) then) =
      __$$HttpExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$HttpExceptionImpl>
    implements _$$HttpExceptionImplCopyWith<$Res> {
  __$$HttpExceptionImplCopyWithImpl(
      _$HttpExceptionImpl _value, $Res Function(_$HttpExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpExceptionImpl implements _HttpException {
  const _$HttpExceptionImpl();

  @override
  String toString() {
    return 'NetworkException.httpException()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HttpExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeOutExeption,
    required TResult Function() unknownExeption,
    required TResult Function() httpException,
    required TResult Function() FormatException,
  }) {
    return httpException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeOutExeption,
    TResult? Function()? unknownExeption,
    TResult? Function()? httpException,
    TResult? Function()? FormatException,
  }) {
    return httpException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeOutExeption,
    TResult Function()? unknownExeption,
    TResult Function()? httpException,
    TResult Function()? FormatException,
    required TResult orElse(),
  }) {
    if (httpException != null) {
      return httpException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeoutException value) timeOutExeption,
    required TResult Function(_UnknownException value) unknownExeption,
    required TResult Function(_HttpException value) httpException,
    required TResult Function(_FormatException value) FormatException,
  }) {
    return httpException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeoutException value)? timeOutExeption,
    TResult? Function(_UnknownException value)? unknownExeption,
    TResult? Function(_HttpException value)? httpException,
    TResult? Function(_FormatException value)? FormatException,
  }) {
    return httpException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeoutException value)? timeOutExeption,
    TResult Function(_UnknownException value)? unknownExeption,
    TResult Function(_HttpException value)? httpException,
    TResult Function(_FormatException value)? FormatException,
    required TResult orElse(),
  }) {
    if (httpException != null) {
      return httpException(this);
    }
    return orElse();
  }
}

abstract class _HttpException implements NetworkException {
  const factory _HttpException() = _$HttpExceptionImpl;
}

/// @nodoc
abstract class _$$FormatExceptionImplCopyWith<$Res> {
  factory _$$FormatExceptionImplCopyWith(_$FormatExceptionImpl value,
          $Res Function(_$FormatExceptionImpl) then) =
      __$$FormatExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormatExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$FormatExceptionImpl>
    implements _$$FormatExceptionImplCopyWith<$Res> {
  __$$FormatExceptionImplCopyWithImpl(
      _$FormatExceptionImpl _value, $Res Function(_$FormatExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormatExceptionImpl implements _FormatException {
  const _$FormatExceptionImpl();

  @override
  String toString() {
    return 'NetworkException.FormatException()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormatExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeOutExeption,
    required TResult Function() unknownExeption,
    required TResult Function() httpException,
    required TResult Function() FormatException,
  }) {
    return FormatException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeOutExeption,
    TResult? Function()? unknownExeption,
    TResult? Function()? httpException,
    TResult? Function()? FormatException,
  }) {
    return FormatException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeOutExeption,
    TResult Function()? unknownExeption,
    TResult Function()? httpException,
    TResult Function()? FormatException,
    required TResult orElse(),
  }) {
    if (FormatException != null) {
      return FormatException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeoutException value) timeOutExeption,
    required TResult Function(_UnknownException value) unknownExeption,
    required TResult Function(_HttpException value) httpException,
    required TResult Function(_FormatException value) FormatException,
  }) {
    return FormatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeoutException value)? timeOutExeption,
    TResult? Function(_UnknownException value)? unknownExeption,
    TResult? Function(_HttpException value)? httpException,
    TResult? Function(_FormatException value)? FormatException,
  }) {
    return FormatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeoutException value)? timeOutExeption,
    TResult Function(_UnknownException value)? unknownExeption,
    TResult Function(_HttpException value)? httpException,
    TResult Function(_FormatException value)? FormatException,
    required TResult orElse(),
  }) {
    if (FormatException != null) {
      return FormatException(this);
    }
    return orElse();
  }
}

abstract class _FormatException implements NetworkException {
  const factory _FormatException() = _$FormatExceptionImpl;
}
