// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkParameter {
  String get url => throw _privateConstructorUsedError;
  Map<dynamic, String>? get requestBody => throw _privateConstructorUsedError;
  Map<dynamic, String>? get header => throw _privateConstructorUsedError;
  Map<dynamic, String>? get queryParameters =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkParameterCopyWith<NetworkParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkParameterCopyWith<$Res> {
  factory $NetworkParameterCopyWith(
          NetworkParameter value, $Res Function(NetworkParameter) then) =
      _$NetworkParameterCopyWithImpl<$Res, NetworkParameter>;
  @useResult
  $Res call(
      {String url,
      Map<dynamic, String>? requestBody,
      Map<dynamic, String>? header,
      Map<dynamic, String>? queryParameters});
}

/// @nodoc
class _$NetworkParameterCopyWithImpl<$Res, $Val extends NetworkParameter>
    implements $NetworkParameterCopyWith<$Res> {
  _$NetworkParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? requestBody = freezed,
    Object? header = freezed,
    Object? queryParameters = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      requestBody: freezed == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      queryParameters: freezed == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkParameterImplCopyWith<$Res>
    implements $NetworkParameterCopyWith<$Res> {
  factory _$$NetworkParameterImplCopyWith(_$NetworkParameterImpl value,
          $Res Function(_$NetworkParameterImpl) then) =
      __$$NetworkParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      Map<dynamic, String>? requestBody,
      Map<dynamic, String>? header,
      Map<dynamic, String>? queryParameters});
}

/// @nodoc
class __$$NetworkParameterImplCopyWithImpl<$Res>
    extends _$NetworkParameterCopyWithImpl<$Res, _$NetworkParameterImpl>
    implements _$$NetworkParameterImplCopyWith<$Res> {
  __$$NetworkParameterImplCopyWithImpl(_$NetworkParameterImpl _value,
      $Res Function(_$NetworkParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? requestBody = freezed,
    Object? header = freezed,
    Object? queryParameters = freezed,
  }) {
    return _then(_$NetworkParameterImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      requestBody: freezed == requestBody
          ? _value._requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      header: freezed == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      queryParameters: freezed == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
    ));
  }
}

/// @nodoc

class _$NetworkParameterImpl implements _NetworkParameter {
  const _$NetworkParameterImpl(
      {required this.url,
      final Map<dynamic, String>? requestBody,
      final Map<dynamic, String>? header,
      final Map<dynamic, String>? queryParameters})
      : _requestBody = requestBody,
        _header = header,
        _queryParameters = queryParameters;

  @override
  final String url;
  final Map<dynamic, String>? _requestBody;
  @override
  Map<dynamic, String>? get requestBody {
    final value = _requestBody;
    if (value == null) return null;
    if (_requestBody is EqualUnmodifiableMapView) return _requestBody;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<dynamic, String>? _header;
  @override
  Map<dynamic, String>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableMapView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<dynamic, String>? _queryParameters;
  @override
  Map<dynamic, String>? get queryParameters {
    final value = _queryParameters;
    if (value == null) return null;
    if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NetworkParameter(url: $url, requestBody: $requestBody, header: $header, queryParameters: $queryParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkParameterImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._requestBody, _requestBody) &&
            const DeepCollectionEquality().equals(other._header, _header) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_requestBody),
      const DeepCollectionEquality().hash(_header),
      const DeepCollectionEquality().hash(_queryParameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkParameterImplCopyWith<_$NetworkParameterImpl> get copyWith =>
      __$$NetworkParameterImplCopyWithImpl<_$NetworkParameterImpl>(
          this, _$identity);
}

abstract class _NetworkParameter implements NetworkParameter {
  const factory _NetworkParameter(
      {required final String url,
      final Map<dynamic, String>? requestBody,
      final Map<dynamic, String>? header,
      final Map<dynamic, String>? queryParameters}) = _$NetworkParameterImpl;

  @override
  String get url;
  @override
  Map<dynamic, String>? get requestBody;
  @override
  Map<dynamic, String>? get header;
  @override
  Map<dynamic, String>? get queryParameters;
  @override
  @JsonKey(ignore: true)
  _$$NetworkParameterImplCopyWith<_$NetworkParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
