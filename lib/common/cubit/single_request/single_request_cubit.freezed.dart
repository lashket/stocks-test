// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleRequestState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(DomainError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(DomainError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleRequestInitial<T> value) initial,
    required TResult Function(SingleRequestLoading<T> value) loading,
    required TResult Function(SingleRequestLoaded<T> value) loaded,
    required TResult Function(SingleRequestError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleRequestInitial<T> value)? initial,
    TResult? Function(SingleRequestLoading<T> value)? loading,
    TResult? Function(SingleRequestLoaded<T> value)? loaded,
    TResult? Function(SingleRequestError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleRequestInitial<T> value)? initial,
    TResult Function(SingleRequestLoading<T> value)? loading,
    TResult Function(SingleRequestLoaded<T> value)? loaded,
    TResult Function(SingleRequestError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRequestStateCopyWith<T, $Res> {
  factory $SingleRequestStateCopyWith(SingleRequestState<T> value,
          $Res Function(SingleRequestState<T>) then) =
      _$SingleRequestStateCopyWithImpl<T, $Res, SingleRequestState<T>>;
}

/// @nodoc
class _$SingleRequestStateCopyWithImpl<T, $Res,
        $Val extends SingleRequestState<T>>
    implements $SingleRequestStateCopyWith<T, $Res> {
  _$SingleRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SingleRequestInitialImplCopyWith<T, $Res> {
  factory _$$SingleRequestInitialImplCopyWith(
          _$SingleRequestInitialImpl<T> value,
          $Res Function(_$SingleRequestInitialImpl<T>) then) =
      __$$SingleRequestInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SingleRequestInitialImplCopyWithImpl<T, $Res>
    extends _$SingleRequestStateCopyWithImpl<T, $Res,
        _$SingleRequestInitialImpl<T>>
    implements _$$SingleRequestInitialImplCopyWith<T, $Res> {
  __$$SingleRequestInitialImplCopyWithImpl(_$SingleRequestInitialImpl<T> _value,
      $Res Function(_$SingleRequestInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SingleRequestInitialImpl<T> implements SingleRequestInitial<T> {
  const _$SingleRequestInitialImpl();

  @override
  String toString() {
    return 'SingleRequestState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRequestInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(DomainError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleRequestInitial<T> value) initial,
    required TResult Function(SingleRequestLoading<T> value) loading,
    required TResult Function(SingleRequestLoaded<T> value) loaded,
    required TResult Function(SingleRequestError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleRequestInitial<T> value)? initial,
    TResult? Function(SingleRequestLoading<T> value)? loading,
    TResult? Function(SingleRequestLoaded<T> value)? loaded,
    TResult? Function(SingleRequestError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleRequestInitial<T> value)? initial,
    TResult Function(SingleRequestLoading<T> value)? loading,
    TResult Function(SingleRequestLoaded<T> value)? loaded,
    TResult Function(SingleRequestError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SingleRequestInitial<T> implements SingleRequestState<T> {
  const factory SingleRequestInitial() = _$SingleRequestInitialImpl<T>;
}

/// @nodoc
abstract class _$$SingleRequestLoadingImplCopyWith<T, $Res> {
  factory _$$SingleRequestLoadingImplCopyWith(
          _$SingleRequestLoadingImpl<T> value,
          $Res Function(_$SingleRequestLoadingImpl<T>) then) =
      __$$SingleRequestLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SingleRequestLoadingImplCopyWithImpl<T, $Res>
    extends _$SingleRequestStateCopyWithImpl<T, $Res,
        _$SingleRequestLoadingImpl<T>>
    implements _$$SingleRequestLoadingImplCopyWith<T, $Res> {
  __$$SingleRequestLoadingImplCopyWithImpl(_$SingleRequestLoadingImpl<T> _value,
      $Res Function(_$SingleRequestLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SingleRequestLoadingImpl<T> implements SingleRequestLoading<T> {
  const _$SingleRequestLoadingImpl();

  @override
  String toString() {
    return 'SingleRequestState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRequestLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(DomainError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleRequestInitial<T> value) initial,
    required TResult Function(SingleRequestLoading<T> value) loading,
    required TResult Function(SingleRequestLoaded<T> value) loaded,
    required TResult Function(SingleRequestError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleRequestInitial<T> value)? initial,
    TResult? Function(SingleRequestLoading<T> value)? loading,
    TResult? Function(SingleRequestLoaded<T> value)? loaded,
    TResult? Function(SingleRequestError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleRequestInitial<T> value)? initial,
    TResult Function(SingleRequestLoading<T> value)? loading,
    TResult Function(SingleRequestLoaded<T> value)? loaded,
    TResult Function(SingleRequestError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SingleRequestLoading<T> implements SingleRequestState<T> {
  const factory SingleRequestLoading() = _$SingleRequestLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SingleRequestLoadedImplCopyWith<T, $Res> {
  factory _$$SingleRequestLoadedImplCopyWith(_$SingleRequestLoadedImpl<T> value,
          $Res Function(_$SingleRequestLoadedImpl<T>) then) =
      __$$SingleRequestLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SingleRequestLoadedImplCopyWithImpl<T, $Res>
    extends _$SingleRequestStateCopyWithImpl<T, $Res,
        _$SingleRequestLoadedImpl<T>>
    implements _$$SingleRequestLoadedImplCopyWith<T, $Res> {
  __$$SingleRequestLoadedImplCopyWithImpl(_$SingleRequestLoadedImpl<T> _value,
      $Res Function(_$SingleRequestLoadedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SingleRequestLoadedImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SingleRequestLoadedImpl<T> implements SingleRequestLoaded<T> {
  const _$SingleRequestLoadedImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'SingleRequestState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRequestLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRequestLoadedImplCopyWith<T, _$SingleRequestLoadedImpl<T>>
      get copyWith => __$$SingleRequestLoadedImplCopyWithImpl<T,
          _$SingleRequestLoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(DomainError error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleRequestInitial<T> value) initial,
    required TResult Function(SingleRequestLoading<T> value) loading,
    required TResult Function(SingleRequestLoaded<T> value) loaded,
    required TResult Function(SingleRequestError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleRequestInitial<T> value)? initial,
    TResult? Function(SingleRequestLoading<T> value)? loading,
    TResult? Function(SingleRequestLoaded<T> value)? loaded,
    TResult? Function(SingleRequestError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleRequestInitial<T> value)? initial,
    TResult Function(SingleRequestLoading<T> value)? loading,
    TResult Function(SingleRequestLoaded<T> value)? loaded,
    TResult Function(SingleRequestError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SingleRequestLoaded<T> implements SingleRequestState<T> {
  const factory SingleRequestLoaded({required final T data}) =
      _$SingleRequestLoadedImpl<T>;

  T get data;

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleRequestLoadedImplCopyWith<T, _$SingleRequestLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleRequestErrorImplCopyWith<T, $Res> {
  factory _$$SingleRequestErrorImplCopyWith(_$SingleRequestErrorImpl<T> value,
          $Res Function(_$SingleRequestErrorImpl<T>) then) =
      __$$SingleRequestErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DomainError error});
}

/// @nodoc
class __$$SingleRequestErrorImplCopyWithImpl<T, $Res>
    extends _$SingleRequestStateCopyWithImpl<T, $Res,
        _$SingleRequestErrorImpl<T>>
    implements _$$SingleRequestErrorImplCopyWith<T, $Res> {
  __$$SingleRequestErrorImplCopyWithImpl(_$SingleRequestErrorImpl<T> _value,
      $Res Function(_$SingleRequestErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SingleRequestErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DomainError,
    ));
  }
}

/// @nodoc

class _$SingleRequestErrorImpl<T> implements SingleRequestError<T> {
  const _$SingleRequestErrorImpl({required this.error});

  @override
  final DomainError error;

  @override
  String toString() {
    return 'SingleRequestState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRequestErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRequestErrorImplCopyWith<T, _$SingleRequestErrorImpl<T>>
      get copyWith => __$$SingleRequestErrorImplCopyWithImpl<T,
          _$SingleRequestErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(DomainError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleRequestInitial<T> value) initial,
    required TResult Function(SingleRequestLoading<T> value) loading,
    required TResult Function(SingleRequestLoaded<T> value) loaded,
    required TResult Function(SingleRequestError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleRequestInitial<T> value)? initial,
    TResult? Function(SingleRequestLoading<T> value)? loading,
    TResult? Function(SingleRequestLoaded<T> value)? loaded,
    TResult? Function(SingleRequestError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleRequestInitial<T> value)? initial,
    TResult Function(SingleRequestLoading<T> value)? loading,
    TResult Function(SingleRequestLoaded<T> value)? loaded,
    TResult Function(SingleRequestError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SingleRequestError<T> implements SingleRequestState<T> {
  const factory SingleRequestError({required final DomainError error}) =
      _$SingleRequestErrorImpl<T>;

  DomainError get error;

  /// Create a copy of SingleRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleRequestErrorImplCopyWith<T, _$SingleRequestErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
