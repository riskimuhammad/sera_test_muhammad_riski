// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalResult {
  String get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) success,
    required TResult Function(String data) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? success,
    TResult? Function(String data)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? success,
    TResult Function(String data)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalModelSuccess value) success,
    required TResult Function(_LocalModelFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalModelSuccess value)? success,
    TResult? Function(_LocalModelFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalModelSuccess value)? success,
    TResult Function(_LocalModelFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalResultCopyWith<LocalResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalResultCopyWith<$Res> {
  factory $LocalResultCopyWith(
          LocalResult value, $Res Function(LocalResult) then) =
      _$LocalResultCopyWithImpl<$Res, LocalResult>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$LocalResultCopyWithImpl<$Res, $Val extends LocalResult>
    implements $LocalResultCopyWith<$Res> {
  _$LocalResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalModelSuccessImplCopyWith<$Res>
    implements $LocalResultCopyWith<$Res> {
  factory _$$LocalModelSuccessImplCopyWith(_$LocalModelSuccessImpl value,
          $Res Function(_$LocalModelSuccessImpl) then) =
      __$$LocalModelSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$LocalModelSuccessImplCopyWithImpl<$Res>
    extends _$LocalResultCopyWithImpl<$Res, _$LocalModelSuccessImpl>
    implements _$$LocalModelSuccessImplCopyWith<$Res> {
  __$$LocalModelSuccessImplCopyWithImpl(_$LocalModelSuccessImpl _value,
      $Res Function(_$LocalModelSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LocalModelSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalModelSuccessImpl implements _LocalModelSuccess {
  const _$LocalModelSuccessImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'LocalResult.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalModelSuccessImplCopyWith<_$LocalModelSuccessImpl> get copyWith =>
      __$$LocalModelSuccessImplCopyWithImpl<_$LocalModelSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) success,
    required TResult Function(String data) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? success,
    TResult? Function(String data)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? success,
    TResult Function(String data)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalModelSuccess value) success,
    required TResult Function(_LocalModelFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalModelSuccess value)? success,
    TResult? Function(_LocalModelFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalModelSuccess value)? success,
    TResult Function(_LocalModelFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LocalModelSuccess implements LocalResult {
  const factory _LocalModelSuccess({required final String data}) =
      _$LocalModelSuccessImpl;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$LocalModelSuccessImplCopyWith<_$LocalModelSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalModelFailureImplCopyWith<$Res>
    implements $LocalResultCopyWith<$Res> {
  factory _$$LocalModelFailureImplCopyWith(_$LocalModelFailureImpl value,
          $Res Function(_$LocalModelFailureImpl) then) =
      __$$LocalModelFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$LocalModelFailureImplCopyWithImpl<$Res>
    extends _$LocalResultCopyWithImpl<$Res, _$LocalModelFailureImpl>
    implements _$$LocalModelFailureImplCopyWith<$Res> {
  __$$LocalModelFailureImplCopyWithImpl(_$LocalModelFailureImpl _value,
      $Res Function(_$LocalModelFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LocalModelFailureImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalModelFailureImpl implements _LocalModelFailure {
  const _$LocalModelFailureImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'LocalResult.failure(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelFailureImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalModelFailureImplCopyWith<_$LocalModelFailureImpl> get copyWith =>
      __$$LocalModelFailureImplCopyWithImpl<_$LocalModelFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) success,
    required TResult Function(String data) failure,
  }) {
    return failure(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? success,
    TResult? Function(String data)? failure,
  }) {
    return failure?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? success,
    TResult Function(String data)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalModelSuccess value) success,
    required TResult Function(_LocalModelFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalModelSuccess value)? success,
    TResult? Function(_LocalModelFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalModelSuccess value)? success,
    TResult Function(_LocalModelFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LocalModelFailure implements LocalResult {
  const factory _LocalModelFailure({required final String data}) =
      _$LocalModelFailureImpl;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$LocalModelFailureImplCopyWith<_$LocalModelFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
