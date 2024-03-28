// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_session_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalSessionParameter {
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSessionParameterCopyWith<LocalSessionParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSessionParameterCopyWith<$Res> {
  factory $LocalSessionParameterCopyWith(LocalSessionParameter value,
          $Res Function(LocalSessionParameter) then) =
      _$LocalSessionParameterCopyWithImpl<$Res, LocalSessionParameter>;
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class _$LocalSessionParameterCopyWithImpl<$Res,
        $Val extends LocalSessionParameter>
    implements $LocalSessionParameterCopyWith<$Res> {
  _$LocalSessionParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSessionParameterImplCopyWith<$Res>
    implements $LocalSessionParameterCopyWith<$Res> {
  factory _$$LocalSessionParameterImplCopyWith(
          _$LocalSessionParameterImpl value,
          $Res Function(_$LocalSessionParameterImpl) then) =
      __$$LocalSessionParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class __$$LocalSessionParameterImplCopyWithImpl<$Res>
    extends _$LocalSessionParameterCopyWithImpl<$Res,
        _$LocalSessionParameterImpl>
    implements _$$LocalSessionParameterImplCopyWith<$Res> {
  __$$LocalSessionParameterImplCopyWithImpl(_$LocalSessionParameterImpl _value,
      $Res Function(_$LocalSessionParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_$LocalSessionParameterImpl(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalSessionParameterImpl implements _LocalSessionParameter {
  const _$LocalSessionParameterImpl(
      {required this.access_token, required this.refresh_token});

  @override
  final String access_token;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'LocalSessionParameter(access_token: $access_token, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSessionParameterImpl &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, access_token, refresh_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSessionParameterImplCopyWith<_$LocalSessionParameterImpl>
      get copyWith => __$$LocalSessionParameterImplCopyWithImpl<
          _$LocalSessionParameterImpl>(this, _$identity);
}

abstract class _LocalSessionParameter implements LocalSessionParameter {
  const factory _LocalSessionParameter(
      {required final String access_token,
      required final String refresh_token}) = _$LocalSessionParameterImpl;

  @override
  String get access_token;
  @override
  String get refresh_token;
  @override
  @JsonKey(ignore: true)
  _$$LocalSessionParameterImplCopyWith<_$LocalSessionParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
