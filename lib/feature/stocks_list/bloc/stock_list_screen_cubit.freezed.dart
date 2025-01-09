// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_list_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockListScreenState {
  PaginatedState<StockEntity> get paginatedState =>
      throw _privateConstructorUsedError;
  DashboardState get dashboardState => throw _privateConstructorUsedError;

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockListScreenStateCopyWith<StockListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockListScreenStateCopyWith<$Res> {
  factory $StockListScreenStateCopyWith(StockListScreenState value,
          $Res Function(StockListScreenState) then) =
      _$StockListScreenStateCopyWithImpl<$Res, StockListScreenState>;
  @useResult
  $Res call(
      {PaginatedState<StockEntity> paginatedState,
      DashboardState dashboardState});

  $PaginatedStateCopyWith<StockEntity, $Res> get paginatedState;
  $DashboardStateCopyWith<$Res> get dashboardState;
}

/// @nodoc
class _$StockListScreenStateCopyWithImpl<$Res,
        $Val extends StockListScreenState>
    implements $StockListScreenStateCopyWith<$Res> {
  _$StockListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedState = null,
    Object? dashboardState = null,
  }) {
    return _then(_value.copyWith(
      paginatedState: null == paginatedState
          ? _value.paginatedState
          : paginatedState // ignore: cast_nullable_to_non_nullable
              as PaginatedState<StockEntity>,
      dashboardState: null == dashboardState
          ? _value.dashboardState
          : dashboardState // ignore: cast_nullable_to_non_nullable
              as DashboardState,
    ) as $Val);
  }

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedStateCopyWith<StockEntity, $Res> get paginatedState {
    return $PaginatedStateCopyWith<StockEntity, $Res>(_value.paginatedState,
        (value) {
      return _then(_value.copyWith(paginatedState: value) as $Val);
    });
  }

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardStateCopyWith<$Res> get dashboardState {
    return $DashboardStateCopyWith<$Res>(_value.dashboardState, (value) {
      return _then(_value.copyWith(dashboardState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockListScreenStateImplCopyWith<$Res>
    implements $StockListScreenStateCopyWith<$Res> {
  factory _$$StockListScreenStateImplCopyWith(_$StockListScreenStateImpl value,
          $Res Function(_$StockListScreenStateImpl) then) =
      __$$StockListScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginatedState<StockEntity> paginatedState,
      DashboardState dashboardState});

  @override
  $PaginatedStateCopyWith<StockEntity, $Res> get paginatedState;
  @override
  $DashboardStateCopyWith<$Res> get dashboardState;
}

/// @nodoc
class __$$StockListScreenStateImplCopyWithImpl<$Res>
    extends _$StockListScreenStateCopyWithImpl<$Res, _$StockListScreenStateImpl>
    implements _$$StockListScreenStateImplCopyWith<$Res> {
  __$$StockListScreenStateImplCopyWithImpl(_$StockListScreenStateImpl _value,
      $Res Function(_$StockListScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedState = null,
    Object? dashboardState = null,
  }) {
    return _then(_$StockListScreenStateImpl(
      paginatedState: null == paginatedState
          ? _value.paginatedState
          : paginatedState // ignore: cast_nullable_to_non_nullable
              as PaginatedState<StockEntity>,
      dashboardState: null == dashboardState
          ? _value.dashboardState
          : dashboardState // ignore: cast_nullable_to_non_nullable
              as DashboardState,
    ));
  }
}

/// @nodoc

class _$StockListScreenStateImpl implements _StockListScreenState {
  const _$StockListScreenStateImpl(
      {required this.paginatedState, required this.dashboardState});

  @override
  final PaginatedState<StockEntity> paginatedState;
  @override
  final DashboardState dashboardState;

  @override
  String toString() {
    return 'StockListScreenState(paginatedState: $paginatedState, dashboardState: $dashboardState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockListScreenStateImpl &&
            (identical(other.paginatedState, paginatedState) ||
                other.paginatedState == paginatedState) &&
            (identical(other.dashboardState, dashboardState) ||
                other.dashboardState == dashboardState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paginatedState, dashboardState);

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockListScreenStateImplCopyWith<_$StockListScreenStateImpl>
      get copyWith =>
          __$$StockListScreenStateImplCopyWithImpl<_$StockListScreenStateImpl>(
              this, _$identity);
}

abstract class _StockListScreenState implements StockListScreenState {
  const factory _StockListScreenState(
          {required final PaginatedState<StockEntity> paginatedState,
          required final DashboardState dashboardState}) =
      _$StockListScreenStateImpl;

  @override
  PaginatedState<StockEntity> get paginatedState;
  @override
  DashboardState get dashboardState;

  /// Create a copy of StockListScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockListScreenStateImplCopyWith<_$StockListScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
