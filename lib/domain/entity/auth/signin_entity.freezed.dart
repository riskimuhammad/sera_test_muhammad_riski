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
  String? get access_token => throw _privateConstructorUsedError;
  String? get refresh_token => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

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
  $Res call(
      {String? access_token,
      String? refresh_token,
      String? name,
      String? role,
      String? avatar});
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
    Object? access_token = freezed,
    Object? refresh_token = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: freezed == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {String? access_token,
      String? refresh_token,
      String? name,
      String? role,
      String? avatar});
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
    Object? access_token = freezed,
    Object? refresh_token = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$SigninEntityImpl(
      access_token: freezed == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninEntityImpl implements _SigninEntity {
  const _$SigninEntityImpl(
      {this.access_token,
      this.refresh_token,
      this.name,
      this.role,
      this.avatar});

  factory _$SigninEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninEntityImplFromJson(json);

  @override
  final String? access_token;
  @override
  final String? refresh_token;
  @override
  final String? name;
  @override
  final String? role;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'SigninEntity(access_token: $access_token, refresh_token: $refresh_token, name: $name, role: $role, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninEntityImpl &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, access_token, refresh_token, name, role, avatar);

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
  const factory _SigninEntity(
      {final String? access_token,
      final String? refresh_token,
      final String? name,
      final String? role,
      final String? avatar}) = _$SigninEntityImpl;

  factory _SigninEntity.fromJson(Map<String, dynamic> json) =
      _$SigninEntityImpl.fromJson;

  @override
  String? get access_token;
  @override
  String? get refresh_token;
  @override
  String? get name;
  @override
  String? get role;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$SigninEntityImplCopyWith<_$SigninEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
