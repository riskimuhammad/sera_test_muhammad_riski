// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninEntity _$SigninEntityFromJson(Map<String, dynamic> json) {
  return _SigninEntity.fromJson(json);
}

/// @nodoc
mixin _$SigninEntity {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninEntityCopyWith<SigninEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEntityCopyWith<$Res> {
  factory $SigninEntityCopyWith(
          SigninEntity value, $Res Function(SigninEntity) then) =
      _$SigninEntityCopyWithImpl<$Res, SigninEntity>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$SigninEntityCopyWithImpl<$Res, $Val extends SigninEntity>
    implements $SigninEntityCopyWith<$Res> {
  _$SigninEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninEntityImplCopyWith<$Res>
    implements $SigninEntityCopyWith<$Res> {
  factory _$$SigninEntityImplCopyWith(
          _$SigninEntityImpl value, $Res Function(_$SigninEntityImpl) then) =
      __$$SigninEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SigninEntityImplCopyWithImpl<$Res>
    extends _$SigninEntityCopyWithImpl<$Res, _$SigninEntityImpl>
    implements _$$SigninEntityImplCopyWith<$Res> {
  __$$SigninEntityImplCopyWithImpl(
      _$SigninEntityImpl _value, $Res Function(_$SigninEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SigninEntityImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninEntityImpl implements _SigninEntity {
  const _$SigninEntityImpl({required this.token});

  factory _$SigninEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninEntityImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'SigninEntity(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninEntityImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninEntityImplCopyWith<_$SigninEntityImpl> get copyWith =>
      __$$SigninEntityImplCopyWithImpl<_$SigninEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninEntityImplToJson(
      this,
    );
  }
}

abstract class _SigninEntity implements SigninEntity {
  const factory _SigninEntity({required final String token}) =
      _$SigninEntityImpl;

  factory _SigninEntity.fromJson(Map<String, dynamic> json) =
      _$SigninEntityImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$SigninEntityImplCopyWith<_$SigninEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
