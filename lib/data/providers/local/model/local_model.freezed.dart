// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalModel {
  LocalSessionParameter get localSessionParameter =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalSessionParameter localSessionParameter)
        insertSession,
    required TResult Function(LocalSessionParameter localSessionParameter)
        getSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalSessionParameter localSessionParameter)?
        insertSession,
    TResult? Function(LocalSessionParameter localSessionParameter)? getSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalSessionParameter localSessionParameter)?
        insertSession,
    TResult Function(LocalSessionParameter localSessionParameter)? getSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalModelInsertSession value) insertSession,
    required TResult Function(_LocalModelGetSession value) getSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalModelInsertSession value)? insertSession,
    TResult? Function(_LocalModelGetSession value)? getSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalModelInsertSession value)? insertSession,
    TResult Function(_LocalModelGetSession value)? getSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalModelCopyWith<LocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalModelCopyWith<$Res> {
  factory $LocalModelCopyWith(
          LocalModel value, $Res Function(LocalModel) then) =
      _$LocalModelCopyWithImpl<$Res, LocalModel>;
  @useResult
  $Res call({LocalSessionParameter localSessionParameter});

  $LocalSessionParameterCopyWith<$Res> get localSessionParameter;
}

/// @nodoc
class _$LocalModelCopyWithImpl<$Res, $Val extends LocalModel>
    implements $LocalModelCopyWith<$Res> {
  _$LocalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localSessionParameter = null,
  }) {
    return _then(_value.copyWith(
      localSessionParameter: null == localSessionParameter
          ? _value.localSessionParameter
          : localSessionParameter // ignore: cast_nullable_to_non_nullable
              as LocalSessionParameter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalSessionParameterCopyWith<$Res> get localSessionParameter {
    return $LocalSessionParameterCopyWith<$Res>(_value.localSessionParameter,
        (value) {
      return _then(_value.copyWith(localSessionParameter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalModelInsertSessionImplCopyWith<$Res>
    implements $LocalModelCopyWith<$Res> {
  factory _$$LocalModelInsertSessionImplCopyWith(
          _$LocalModelInsertSessionImpl value,
          $Res Function(_$LocalModelInsertSessionImpl) then) =
      __$$LocalModelInsertSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalSessionParameter localSessionParameter});

  @override
  $LocalSessionParameterCopyWith<$Res> get localSessionParameter;
}

/// @nodoc
class __$$LocalModelInsertSessionImplCopyWithImpl<$Res>
    extends _$LocalModelCopyWithImpl<$Res, _$LocalModelInsertSessionImpl>
    implements _$$LocalModelInsertSessionImplCopyWith<$Res> {
  __$$LocalModelInsertSessionImplCopyWithImpl(
      _$LocalModelInsertSessionImpl _value,
      $Res Function(_$LocalModelInsertSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localSessionParameter = null,
  }) {
    return _then(_$LocalModelInsertSessionImpl(
      localSessionParameter: null == localSessionParameter
          ? _value.localSessionParameter
          : localSessionParameter // ignore: cast_nullable_to_non_nullable
              as LocalSessionParameter,
    ));
  }
}

/// @nodoc

class _$LocalModelInsertSessionImpl implements _LocalModelInsertSession {
  const _$LocalModelInsertSessionImpl({required this.localSessionParameter});

  @override
  final LocalSessionParameter localSessionParameter;

  @override
  String toString() {
    return 'LocalModel.insertSession(localSessionParameter: $localSessionParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelInsertSessionImpl &&
            (identical(other.localSessionParameter, localSessionParameter) ||
                other.localSessionParameter == localSessionParameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localSessionParameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalModelInsertSessionImplCopyWith<_$LocalModelInsertSessionImpl>
      get copyWith => __$$LocalModelInsertSessionImplCopyWithImpl<
          _$LocalModelInsertSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalSessionParameter localSessionParameter)
        insertSession,
    required TResult Function(LocalSessionParameter localSessionParameter)
        getSession,
  }) {
    return insertSession(localSessionParameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalSessionParameter localSessionParameter)?
        insertSession,
    TResult? Function(LocalSessionParameter localSessionParameter)? getSession,
  }) {
    return insertSession?.call(localSessionParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalSessionParameter localSessionParameter)?
        insertSession,
    TResult Function(LocalSessionParameter localSessionParameter)? getSession,
    required TResult orElse(),
  }) {
    if (insertSession != null) {
      return insertSession(localSessionParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalModelInsertSession value) insertSession,
    required TResult Function(_LocalModelGetSession value) getSession,
  }) {
    return insertSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalModelInsertSession value)? insertSession,
    TResult? Function(_LocalModelGetSession value)? getSession,
  }) {
    return insertSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalModelInsertSession value)? insertSession,
    TResult Function(_LocalModelGetSession value)? getSession,
    required TResult orElse(),
  }) {
    if (insertSession != null) {
      return insertSession(this);
    }
    return orElse();
  }
}

abstract class _LocalModelInsertSession implements LocalModel {
  const factory _LocalModelInsertSession(
          {required final LocalSessionParameter localSessionParameter}) =
      _$LocalModelInsertSessionImpl;

  @override
  LocalSessionParameter get localSessionParameter;
  @override
  @JsonKey(ignore: true)
  _$$LocalModelInsertSessionImplCopyWith<_$LocalModelInsertSessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalModelGetSessionImplCopyWith<$Res>
    implements $LocalModelCopyWith<$Res> {
  factory _$$LocalModelGetSessionImplCopyWith(_$LocalModelGetSessionImpl value,
          $Res Function(_$LocalModelGetSessionImpl) then) =
      __$$LocalModelGetSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalSessionParameter localSessionParameter});

  @override
  $LocalSessionParameterCopyWith<$Res> get localSessionParameter;
}

/// @nodoc
class __$$LocalModelGetSessionImplCopyWithImpl<$Res>
    extends _$LocalModelCopyWithImpl<$Res, _$LocalModelGetSessionImpl>
    implements _$$LocalModelGetSessionImplCopyWith<$Res> {
  __$$LocalModelGetSessionImplCopyWithImpl(_$LocalModelGetSessionImpl _value,
      $Res Function(_$LocalModelGetSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localSessionParameter = null,
  }) {
    return _then(_$LocalModelGetSessionImpl(
      localSessionParameter: null == localSessionParameter
          ? _value.localSessionParameter
          : localSessionParameter // ignore: cast_nullable_to_non_nullable
              as LocalSessionParameter,
    ));
  }
}

/// @nodoc

class _$LocalModelGetSessionImpl implements _LocalModelGetSession {
  const _$LocalModelGetSessionImpl({required this.localSessionParameter});

  @override
  final LocalSessionParameter localSessionParameter;

  @override
  String toString() {
    return 'LocalModel.getSession(localSessionParameter: $localSessionParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelGetSessionImpl &&
            (identical(other.localSessionParameter, localSessionParameter) ||
                other.localSessionParameter == localSessionParameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localSessionParameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalModelGetSessionImplCopyWith<_$LocalModelGetSessionImpl>
      get copyWith =>
          __$$LocalModelGetSessionImplCopyWithImpl<_$LocalModelGetSessionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalSessionParameter localSessionParameter)
        insertSession,
    required TResult Function(LocalSessionParameter localSessionParameter)
        getSession,
  }) {
    return getSession(localSessionParameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalSessionParameter localSessionParameter)?
        insertSession,
    TResult? Function(LocalSessionParameter localSessionParameter)? getSession,
  }) {
    return getSession?.call(localSessionParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalSessionParameter localSessionParameter)?
        insertSession,
    TResult Function(LocalSessionParameter localSessionParameter)? getSession,
    required TResult orElse(),
  }) {
    if (getSession != null) {
      return getSession(localSessionParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalModelInsertSession value) insertSession,
    required TResult Function(_LocalModelGetSession value) getSession,
  }) {
    return getSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalModelInsertSession value)? insertSession,
    TResult? Function(_LocalModelGetSession value)? getSession,
  }) {
    return getSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalModelInsertSession value)? insertSession,
    TResult Function(_LocalModelGetSession value)? getSession,
    required TResult orElse(),
  }) {
    if (getSession != null) {
      return getSession(this);
    }
    return orElse();
  }
}

abstract class _LocalModelGetSession implements LocalModel {
  const factory _LocalModelGetSession(
          {required final LocalSessionParameter localSessionParameter}) =
      _$LocalModelGetSessionImpl;

  @override
  LocalSessionParameter get localSessionParameter;
  @override
  @JsonKey(ignore: true)
  _$$LocalModelGetSessionImplCopyWith<_$LocalModelGetSessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}