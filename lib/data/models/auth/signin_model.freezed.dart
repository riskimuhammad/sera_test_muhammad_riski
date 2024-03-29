// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninModel _$SigninModelFromJson(Map<String, dynamic> json) {
  return _SigninModel.fromJson(json);
}

/// @nodoc
mixin _$SigninModel {
  String? get username => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get password =>
      throw _privateConstructorUsedError; //FOR API https://api.escuelajs.co/
  String? get email => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninModelCopyWith<SigninModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninModelCopyWith<$Res> {
  factory $SigninModelCopyWith(
          SigninModel value, $Res Function(SigninModel) then) =
      _$SigninModelCopyWithImpl<$Res, SigninModel>;
  @useResult
  $Res call(
      {String? username,
      String? id,
      String? password,
      String? email,
      String? token});
}

/// @nodoc
class _$SigninModelCopyWithImpl<$Res, $Val extends SigninModel>
    implements $SigninModelCopyWith<$Res> {
  _$SigninModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? id = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninModelImplCopyWith<$Res>
    implements $SigninModelCopyWith<$Res> {
  factory _$$SigninModelImplCopyWith(
          _$SigninModelImpl value, $Res Function(_$SigninModelImpl) then) =
      __$$SigninModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? id,
      String? password,
      String? email,
      String? token});
}

/// @nodoc
class __$$SigninModelImplCopyWithImpl<$Res>
    extends _$SigninModelCopyWithImpl<$Res, _$SigninModelImpl>
    implements _$$SigninModelImplCopyWith<$Res> {
  __$$SigninModelImplCopyWithImpl(
      _$SigninModelImpl _value, $Res Function(_$SigninModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? id = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_$SigninModelImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninModelImpl implements _SigninModel {
  const _$SigninModelImpl(
      {this.username, this.id, this.password, this.email, this.token});

  factory _$SigninModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninModelImplFromJson(json);

  @override
  final String? username;
  @override
  final String? id;
  @override
  final String? password;
//FOR API https://api.escuelajs.co/
  @override
  final String? email;
  @override
  final String? token;

  @override
  String toString() {
    return 'SigninModel(username: $username, id: $id, password: $password, email: $email, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, id, password, email, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninModelImplCopyWith<_$SigninModelImpl> get copyWith =>
      __$$SigninModelImplCopyWithImpl<_$SigninModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninModelImplToJson(
      this,
    );
  }
}

abstract class _SigninModel implements SigninModel {
  const factory _SigninModel(
      {final String? username,
      final String? id,
      final String? password,
      final String? email,
      final String? token}) = _$SigninModelImpl;

  factory _SigninModel.fromJson(Map<String, dynamic> json) =
      _$SigninModelImpl.fromJson;

  @override
  String? get username;
  @override
  String? get id;
  @override
  String? get password;
  @override //FOR API https://api.escuelajs.co/
  String? get email;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$SigninModelImplCopyWith<_$SigninModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
