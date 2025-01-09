// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_base_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items, bool hasMore, int totalItems)
        loaded,
    required TResult Function(DomainError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult? Function(DomainError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginatedInitial<T> value) initial,
    required TResult Function(PaginatedLoading<T> value) loading,
    required TResult Function(PaginatedLoaded<T> value) loaded,
    required TResult Function(PaginatedError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginatedInitial<T> value)? initial,
    TResult? Function(PaginatedLoading<T> value)? loading,
    TResult? Function(PaginatedLoaded<T> value)? loaded,
    TResult? Function(PaginatedError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedInitial<T> value)? initial,
    TResult Function(PaginatedLoading<T> value)? loading,
    TResult Function(PaginatedLoaded<T> value)? loaded,
    TResult Function(PaginatedError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedStateCopyWith<T, $Res> {
  factory $PaginatedStateCopyWith(
          PaginatedState<T> value, $Res Function(PaginatedState<T>) then) =
      _$PaginatedStateCopyWithImpl<T, $Res, PaginatedState<T>>;
}

/// @nodoc
class _$PaginatedStateCopyWithImpl<T, $Res, $Val extends PaginatedState<T>>
    implements $PaginatedStateCopyWith<T, $Res> {
  _$PaginatedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaginatedInitialImplCopyWith<T, $Res> {
  factory _$$PaginatedInitialImplCopyWith(_$PaginatedInitialImpl<T> value,
          $Res Function(_$PaginatedInitialImpl<T>) then) =
      __$$PaginatedInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginatedInitialImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedInitialImpl<T>>
    implements _$$PaginatedInitialImplCopyWith<T, $Res> {
  __$$PaginatedInitialImplCopyWithImpl(_$PaginatedInitialImpl<T> _value,
      $Res Function(_$PaginatedInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginatedInitialImpl<T> implements PaginatedInitial<T> {
  const _$PaginatedInitialImpl();

  @override
  String toString() {
    return 'PaginatedState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items, bool hasMore, int totalItems)
        loaded,
    required TResult Function(DomainError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items, bool hasMore, int totalItems)? loaded,
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
    required TResult Function(PaginatedInitial<T> value) initial,
    required TResult Function(PaginatedLoading<T> value) loading,
    required TResult Function(PaginatedLoaded<T> value) loaded,
    required TResult Function(PaginatedError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginatedInitial<T> value)? initial,
    TResult? Function(PaginatedLoading<T> value)? loading,
    TResult? Function(PaginatedLoaded<T> value)? loaded,
    TResult? Function(PaginatedError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedInitial<T> value)? initial,
    TResult Function(PaginatedLoading<T> value)? loading,
    TResult Function(PaginatedLoaded<T> value)? loaded,
    TResult Function(PaginatedError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaginatedInitial<T> implements PaginatedState<T> {
  const factory PaginatedInitial() = _$PaginatedInitialImpl<T>;
}

/// @nodoc
abstract class _$$PaginatedLoadingImplCopyWith<T, $Res> {
  factory _$$PaginatedLoadingImplCopyWith(_$PaginatedLoadingImpl<T> value,
          $Res Function(_$PaginatedLoadingImpl<T>) then) =
      __$$PaginatedLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginatedLoadingImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedLoadingImpl<T>>
    implements _$$PaginatedLoadingImplCopyWith<T, $Res> {
  __$$PaginatedLoadingImplCopyWithImpl(_$PaginatedLoadingImpl<T> _value,
      $Res Function(_$PaginatedLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginatedLoadingImpl<T> implements PaginatedLoading<T> {
  const _$PaginatedLoadingImpl();

  @override
  String toString() {
    return 'PaginatedState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items, bool hasMore, int totalItems)
        loaded,
    required TResult Function(DomainError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items, bool hasMore, int totalItems)? loaded,
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
    required TResult Function(PaginatedInitial<T> value) initial,
    required TResult Function(PaginatedLoading<T> value) loading,
    required TResult Function(PaginatedLoaded<T> value) loaded,
    required TResult Function(PaginatedError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginatedInitial<T> value)? initial,
    TResult? Function(PaginatedLoading<T> value)? loading,
    TResult? Function(PaginatedLoaded<T> value)? loaded,
    TResult? Function(PaginatedError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedInitial<T> value)? initial,
    TResult Function(PaginatedLoading<T> value)? loading,
    TResult Function(PaginatedLoaded<T> value)? loaded,
    TResult Function(PaginatedError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaginatedLoading<T> implements PaginatedState<T> {
  const factory PaginatedLoading() = _$PaginatedLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PaginatedLoadedImplCopyWith<T, $Res> {
  factory _$$PaginatedLoadedImplCopyWith(_$PaginatedLoadedImpl<T> value,
          $Res Function(_$PaginatedLoadedImpl<T>) then) =
      __$$PaginatedLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items, bool hasMore, int totalItems});
}

/// @nodoc
class __$$PaginatedLoadedImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedLoadedImpl<T>>
    implements _$$PaginatedLoadedImplCopyWith<T, $Res> {
  __$$PaginatedLoadedImplCopyWithImpl(_$PaginatedLoadedImpl<T> _value,
      $Res Function(_$PaginatedLoadedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
    Object? totalItems = null,
  }) {
    return _then(_$PaginatedLoadedImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginatedLoadedImpl<T> implements PaginatedLoaded<T> {
  const _$PaginatedLoadedImpl(
      {required final List<T> items,
      required this.hasMore,
      required this.totalItems})
      : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool hasMore;
  @override
  final int totalItems;

  @override
  String toString() {
    return 'PaginatedState<$T>.loaded(items: $items, hasMore: $hasMore, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), hasMore, totalItems);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedLoadedImplCopyWith<T, _$PaginatedLoadedImpl<T>> get copyWith =>
      __$$PaginatedLoadedImplCopyWithImpl<T, _$PaginatedLoadedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items, bool hasMore, int totalItems)
        loaded,
    required TResult Function(DomainError error) error,
  }) {
    return loaded(items, hasMore, totalItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return loaded?.call(items, hasMore, totalItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult Function(DomainError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, hasMore, totalItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginatedInitial<T> value) initial,
    required TResult Function(PaginatedLoading<T> value) loading,
    required TResult Function(PaginatedLoaded<T> value) loaded,
    required TResult Function(PaginatedError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginatedInitial<T> value)? initial,
    TResult? Function(PaginatedLoading<T> value)? loading,
    TResult? Function(PaginatedLoaded<T> value)? loaded,
    TResult? Function(PaginatedError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedInitial<T> value)? initial,
    TResult Function(PaginatedLoading<T> value)? loading,
    TResult Function(PaginatedLoaded<T> value)? loaded,
    TResult Function(PaginatedError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PaginatedLoaded<T> implements PaginatedState<T> {
  const factory PaginatedLoaded(
      {required final List<T> items,
      required final bool hasMore,
      required final int totalItems}) = _$PaginatedLoadedImpl<T>;

  List<T> get items;
  bool get hasMore;
  int get totalItems;

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedLoadedImplCopyWith<T, _$PaginatedLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedErrorImplCopyWith<T, $Res> {
  factory _$$PaginatedErrorImplCopyWith(_$PaginatedErrorImpl<T> value,
          $Res Function(_$PaginatedErrorImpl<T>) then) =
      __$$PaginatedErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DomainError error});
}

/// @nodoc
class __$$PaginatedErrorImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedErrorImpl<T>>
    implements _$$PaginatedErrorImplCopyWith<T, $Res> {
  __$$PaginatedErrorImplCopyWithImpl(_$PaginatedErrorImpl<T> _value,
      $Res Function(_$PaginatedErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaginatedErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DomainError,
    ));
  }
}

/// @nodoc

class _$PaginatedErrorImpl<T> implements PaginatedError<T> {
  const _$PaginatedErrorImpl(this.error);

  @override
  final DomainError error;

  @override
  String toString() {
    return 'PaginatedState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedErrorImplCopyWith<T, _$PaginatedErrorImpl<T>> get copyWith =>
      __$$PaginatedErrorImplCopyWithImpl<T, _$PaginatedErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items, bool hasMore, int totalItems)
        loaded,
    required TResult Function(DomainError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> items, bool hasMore, int totalItems)? loaded,
    TResult? Function(DomainError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items, bool hasMore, int totalItems)? loaded,
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
    required TResult Function(PaginatedInitial<T> value) initial,
    required TResult Function(PaginatedLoading<T> value) loading,
    required TResult Function(PaginatedLoaded<T> value) loaded,
    required TResult Function(PaginatedError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaginatedInitial<T> value)? initial,
    TResult? Function(PaginatedLoading<T> value)? loading,
    TResult? Function(PaginatedLoaded<T> value)? loaded,
    TResult? Function(PaginatedError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedInitial<T> value)? initial,
    TResult Function(PaginatedLoading<T> value)? loading,
    TResult Function(PaginatedLoaded<T> value)? loaded,
    TResult Function(PaginatedError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PaginatedError<T> implements PaginatedState<T> {
  const factory PaginatedError(final DomainError error) =
      _$PaginatedErrorImpl<T>;

  DomainError get error;

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedErrorImplCopyWith<T, _$PaginatedErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
