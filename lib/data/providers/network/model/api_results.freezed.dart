// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        success,
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        error,
    required TResult Function(NetworkException networkException) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult? Function(NetworkException networkException)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult Function(NetworkException networkException)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) success,
    required TResult Function(_NetworkModelError value) error,
    required TResult Function(_NetworkModelFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? success,
    TResult? Function(_NetworkModelError value)? error,
    TResult? Function(_NetworkModelFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? success,
    TResult Function(_NetworkModelError value)? error,
    TResult Function(_NetworkModelFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<$Res> {
  factory $ApiResultCopyWith(ApiResult value, $Res Function(ApiResult) then) =
      _$ApiResultCopyWithImpl<$Res, ApiResult>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<$Res, $Val extends ApiResult>
    implements $ApiResultCopyWith<$Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkModelPostImplCopyWith<$Res> {
  factory _$$NetworkModelPostImplCopyWith(_$NetworkModelPostImpl value,
          $Res Function(_$NetworkModelPostImpl) then) =
      __$$NetworkModelPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String data, String url, Map<String, String> headers, int statusCode});
}

/// @nodoc
class __$$NetworkModelPostImplCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$NetworkModelPostImpl>
    implements _$$NetworkModelPostImplCopyWith<$Res> {
  __$$NetworkModelPostImplCopyWithImpl(_$NetworkModelPostImpl _value,
      $Res Function(_$NetworkModelPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? url = null,
    Object? headers = null,
    Object? statusCode = null,
  }) {
    return _then(_$NetworkModelPostImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NetworkModelPostImpl implements _NetworkModelPost {
  const _$NetworkModelPostImpl(
      {required this.data,
      required this.url,
      required final Map<String, String> headers,
      required this.statusCode})
      : _headers = headers;

  @override
  final String data;
  @override
  final String url;
  final Map<String, String> _headers;
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'ApiResult.success(data: $data, url: $url, headers: $headers, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelPostImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, url,
      const DeepCollectionEquality().hash(_headers), statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelPostImplCopyWith<_$NetworkModelPostImpl> get copyWith =>
      __$$NetworkModelPostImplCopyWithImpl<_$NetworkModelPostImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        success,
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        error,
    required TResult Function(NetworkException networkException) failure,
  }) {
    return success(data, url, headers, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult? Function(NetworkException networkException)? failure,
  }) {
    return success?.call(data, url, headers, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult Function(NetworkException networkException)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, url, headers, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) success,
    required TResult Function(_NetworkModelError value) error,
    required TResult Function(_NetworkModelFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? success,
    TResult? Function(_NetworkModelError value)? error,
    TResult? Function(_NetworkModelFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? success,
    TResult Function(_NetworkModelError value)? error,
    TResult Function(_NetworkModelFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelPost implements ApiResult {
  const factory _NetworkModelPost(
      {required final String data,
      required final String url,
      required final Map<String, String> headers,
      required final int statusCode}) = _$NetworkModelPostImpl;

  String get data;
  String get url;
  Map<String, String> get headers;
  int get statusCode;
  @JsonKey(ignore: true)
  _$$NetworkModelPostImplCopyWith<_$NetworkModelPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkModelErrorImplCopyWith<$Res> {
  factory _$$NetworkModelErrorImplCopyWith(_$NetworkModelErrorImpl value,
          $Res Function(_$NetworkModelErrorImpl) then) =
      __$$NetworkModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String data, String url, Map<String, String> headers, int statusCode});
}

/// @nodoc
class __$$NetworkModelErrorImplCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$NetworkModelErrorImpl>
    implements _$$NetworkModelErrorImplCopyWith<$Res> {
  __$$NetworkModelErrorImplCopyWithImpl(_$NetworkModelErrorImpl _value,
      $Res Function(_$NetworkModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? url = null,
    Object? headers = null,
    Object? statusCode = null,
  }) {
    return _then(_$NetworkModelErrorImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NetworkModelErrorImpl implements _NetworkModelError {
  const _$NetworkModelErrorImpl(
      {required this.data,
      required this.url,
      required final Map<String, String> headers,
      required this.statusCode})
      : _headers = headers;

  @override
  final String data;
  @override
  final String url;
  final Map<String, String> _headers;
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'ApiResult.error(data: $data, url: $url, headers: $headers, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelErrorImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, url,
      const DeepCollectionEquality().hash(_headers), statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelErrorImplCopyWith<_$NetworkModelErrorImpl> get copyWith =>
      __$$NetworkModelErrorImplCopyWithImpl<_$NetworkModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        success,
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        error,
    required TResult Function(NetworkException networkException) failure,
  }) {
    return error(data, url, headers, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult? Function(NetworkException networkException)? failure,
  }) {
    return error?.call(data, url, headers, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult Function(NetworkException networkException)? failure,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, url, headers, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) success,
    required TResult Function(_NetworkModelError value) error,
    required TResult Function(_NetworkModelFailure value) failure,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? success,
    TResult? Function(_NetworkModelError value)? error,
    TResult? Function(_NetworkModelFailure value)? failure,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? success,
    TResult Function(_NetworkModelError value)? error,
    TResult Function(_NetworkModelFailure value)? failure,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelError implements ApiResult {
  const factory _NetworkModelError(
      {required final String data,
      required final String url,
      required final Map<String, String> headers,
      required final int statusCode}) = _$NetworkModelErrorImpl;

  String get data;
  String get url;
  Map<String, String> get headers;
  int get statusCode;
  @JsonKey(ignore: true)
  _$$NetworkModelErrorImplCopyWith<_$NetworkModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkModelFailureImplCopyWith<$Res> {
  factory _$$NetworkModelFailureImplCopyWith(_$NetworkModelFailureImpl value,
          $Res Function(_$NetworkModelFailureImpl) then) =
      __$$NetworkModelFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkException networkException});

  $NetworkExceptionCopyWith<$Res> get networkException;
}

/// @nodoc
class __$$NetworkModelFailureImplCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$NetworkModelFailureImpl>
    implements _$$NetworkModelFailureImplCopyWith<$Res> {
  __$$NetworkModelFailureImplCopyWithImpl(_$NetworkModelFailureImpl _value,
      $Res Function(_$NetworkModelFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = null,
  }) {
    return _then(_$NetworkModelFailureImpl(
      networkException: null == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkException,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionCopyWith<$Res> get networkException {
    return $NetworkExceptionCopyWith<$Res>(_value.networkException, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$NetworkModelFailureImpl implements _NetworkModelFailure {
  const _$NetworkModelFailureImpl({required this.networkException});

  @override
  final NetworkException networkException;

  @override
  String toString() {
    return 'ApiResult.failure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkModelFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkModelFailureImplCopyWith<_$NetworkModelFailureImpl> get copyWith =>
      __$$NetworkModelFailureImplCopyWithImpl<_$NetworkModelFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        success,
    required TResult Function(String data, String url,
            Map<String, String> headers, int statusCode)
        error,
    required TResult Function(NetworkException networkException) failure,
  }) {
    return failure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult? Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult? Function(NetworkException networkException)? failure,
  }) {
    return failure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        success,
    TResult Function(String data, String url, Map<String, String> headers,
            int statusCode)?
        error,
    TResult Function(NetworkException networkException)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkModelPost value) success,
    required TResult Function(_NetworkModelError value) error,
    required TResult Function(_NetworkModelFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkModelPost value)? success,
    TResult? Function(_NetworkModelError value)? error,
    TResult? Function(_NetworkModelFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkModelPost value)? success,
    TResult Function(_NetworkModelError value)? error,
    TResult Function(_NetworkModelFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NetworkModelFailure implements ApiResult {
  const factory _NetworkModelFailure(
          {required final NetworkException networkException}) =
      _$NetworkModelFailureImpl;

  NetworkException get networkException;
  @JsonKey(ignore: true)
  _$$NetworkModelFailureImplCopyWith<_$NetworkModelFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
