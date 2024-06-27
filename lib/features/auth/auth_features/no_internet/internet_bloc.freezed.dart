// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() autoCheck,
    required TResult Function() check,
    required TResult Function(String lastRoute) lastRoute,
    required TResult Function(bool status) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? autoCheck,
    TResult? Function()? check,
    TResult? Function(String lastRoute)? lastRoute,
    TResult? Function(bool status)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? autoCheck,
    TResult Function()? check,
    TResult Function(String lastRoute)? lastRoute,
    TResult Function(bool status)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutoCheck value) autoCheck,
    required TResult Function(_Check value) check,
    required TResult Function(_LastRoute value) lastRoute,
    required TResult Function(_NoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutoCheck value)? autoCheck,
    TResult? Function(_Check value)? check,
    TResult? Function(_LastRoute value)? lastRoute,
    TResult? Function(_NoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutoCheck value)? autoCheck,
    TResult Function(_Check value)? check,
    TResult Function(_LastRoute value)? lastRoute,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetEventCopyWith<$Res> {
  factory $InternetEventCopyWith(
          InternetEvent value, $Res Function(InternetEvent) then) =
      _$InternetEventCopyWithImpl<$Res, InternetEvent>;
}

/// @nodoc
class _$InternetEventCopyWithImpl<$Res, $Val extends InternetEvent>
    implements $InternetEventCopyWith<$Res> {
  _$InternetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AutoCheckImplCopyWith<$Res> {
  factory _$$AutoCheckImplCopyWith(
          _$AutoCheckImpl value, $Res Function(_$AutoCheckImpl) then) =
      __$$AutoCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoCheckImplCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res, _$AutoCheckImpl>
    implements _$$AutoCheckImplCopyWith<$Res> {
  __$$AutoCheckImplCopyWithImpl(
      _$AutoCheckImpl _value, $Res Function(_$AutoCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AutoCheckImpl implements _AutoCheck {
  const _$AutoCheckImpl();

  @override
  String toString() {
    return 'InternetEvent.autoCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AutoCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() autoCheck,
    required TResult Function() check,
    required TResult Function(String lastRoute) lastRoute,
    required TResult Function(bool status) noInternet,
  }) {
    return autoCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? autoCheck,
    TResult? Function()? check,
    TResult? Function(String lastRoute)? lastRoute,
    TResult? Function(bool status)? noInternet,
  }) {
    return autoCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? autoCheck,
    TResult Function()? check,
    TResult Function(String lastRoute)? lastRoute,
    TResult Function(bool status)? noInternet,
    required TResult orElse(),
  }) {
    if (autoCheck != null) {
      return autoCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutoCheck value) autoCheck,
    required TResult Function(_Check value) check,
    required TResult Function(_LastRoute value) lastRoute,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return autoCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutoCheck value)? autoCheck,
    TResult? Function(_Check value)? check,
    TResult? Function(_LastRoute value)? lastRoute,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return autoCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutoCheck value)? autoCheck,
    TResult Function(_Check value)? check,
    TResult Function(_LastRoute value)? lastRoute,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (autoCheck != null) {
      return autoCheck(this);
    }
    return orElse();
  }
}

abstract class _AutoCheck implements InternetEvent {
  const factory _AutoCheck() = _$AutoCheckImpl;
}

/// @nodoc
abstract class _$$CheckImplCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
          _$CheckImpl value, $Res Function(_$CheckImpl) then) =
      __$$CheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
      _$CheckImpl _value, $Res Function(_$CheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckImpl implements _Check {
  const _$CheckImpl();

  @override
  String toString() {
    return 'InternetEvent.check()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() autoCheck,
    required TResult Function() check,
    required TResult Function(String lastRoute) lastRoute,
    required TResult Function(bool status) noInternet,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? autoCheck,
    TResult? Function()? check,
    TResult? Function(String lastRoute)? lastRoute,
    TResult? Function(bool status)? noInternet,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? autoCheck,
    TResult Function()? check,
    TResult Function(String lastRoute)? lastRoute,
    TResult Function(bool status)? noInternet,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutoCheck value) autoCheck,
    required TResult Function(_Check value) check,
    required TResult Function(_LastRoute value) lastRoute,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutoCheck value)? autoCheck,
    TResult? Function(_Check value)? check,
    TResult? Function(_LastRoute value)? lastRoute,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutoCheck value)? autoCheck,
    TResult Function(_Check value)? check,
    TResult Function(_LastRoute value)? lastRoute,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _Check implements InternetEvent {
  const factory _Check() = _$CheckImpl;
}

/// @nodoc
abstract class _$$LastRouteImplCopyWith<$Res> {
  factory _$$LastRouteImplCopyWith(
          _$LastRouteImpl value, $Res Function(_$LastRouteImpl) then) =
      __$$LastRouteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastRoute});
}

/// @nodoc
class __$$LastRouteImplCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res, _$LastRouteImpl>
    implements _$$LastRouteImplCopyWith<$Res> {
  __$$LastRouteImplCopyWithImpl(
      _$LastRouteImpl _value, $Res Function(_$LastRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastRoute = null,
  }) {
    return _then(_$LastRouteImpl(
      null == lastRoute
          ? _value.lastRoute
          : lastRoute // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastRouteImpl implements _LastRoute {
  const _$LastRouteImpl(this.lastRoute);

  @override
  final String lastRoute;

  @override
  String toString() {
    return 'InternetEvent.lastRoute(lastRoute: $lastRoute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastRouteImpl &&
            (identical(other.lastRoute, lastRoute) ||
                other.lastRoute == lastRoute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastRoute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastRouteImplCopyWith<_$LastRouteImpl> get copyWith =>
      __$$LastRouteImplCopyWithImpl<_$LastRouteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() autoCheck,
    required TResult Function() check,
    required TResult Function(String lastRoute) lastRoute,
    required TResult Function(bool status) noInternet,
  }) {
    return lastRoute(this.lastRoute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? autoCheck,
    TResult? Function()? check,
    TResult? Function(String lastRoute)? lastRoute,
    TResult? Function(bool status)? noInternet,
  }) {
    return lastRoute?.call(this.lastRoute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? autoCheck,
    TResult Function()? check,
    TResult Function(String lastRoute)? lastRoute,
    TResult Function(bool status)? noInternet,
    required TResult orElse(),
  }) {
    if (lastRoute != null) {
      return lastRoute(this.lastRoute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutoCheck value) autoCheck,
    required TResult Function(_Check value) check,
    required TResult Function(_LastRoute value) lastRoute,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return lastRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutoCheck value)? autoCheck,
    TResult? Function(_Check value)? check,
    TResult? Function(_LastRoute value)? lastRoute,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return lastRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutoCheck value)? autoCheck,
    TResult Function(_Check value)? check,
    TResult Function(_LastRoute value)? lastRoute,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (lastRoute != null) {
      return lastRoute(this);
    }
    return orElse();
  }
}

abstract class _LastRoute implements InternetEvent {
  const factory _LastRoute(final String lastRoute) = _$LastRouteImpl;

  String get lastRoute;
  @JsonKey(ignore: true)
  _$$LastRouteImplCopyWith<_$LastRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$NoInternetImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NoInternetImpl implements _NoInternet {
  const _$NoInternetImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'InternetEvent.noInternet(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      __$$NoInternetImplCopyWithImpl<_$NoInternetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() autoCheck,
    required TResult Function() check,
    required TResult Function(String lastRoute) lastRoute,
    required TResult Function(bool status) noInternet,
  }) {
    return noInternet(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? autoCheck,
    TResult? Function()? check,
    TResult? Function(String lastRoute)? lastRoute,
    TResult? Function(bool status)? noInternet,
  }) {
    return noInternet?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? autoCheck,
    TResult Function()? check,
    TResult Function(String lastRoute)? lastRoute,
    TResult Function(bool status)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutoCheck value) autoCheck,
    required TResult Function(_Check value) check,
    required TResult Function(_LastRoute value) lastRoute,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutoCheck value)? autoCheck,
    TResult? Function(_Check value)? check,
    TResult? Function(_LastRoute value)? lastRoute,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutoCheck value)? autoCheck,
    TResult Function(_Check value)? check,
    TResult Function(_LastRoute value)? lastRoute,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements InternetEvent {
  const factory _NoInternet(final bool status) = _$NoInternetImpl;

  bool get status;
  @JsonKey(ignore: true)
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternetState {
  bool get noInternet => throw _privateConstructorUsedError;
  String? get lastRoute => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res, InternetState>;
  @useResult
  $Res call({bool noInternet, String? lastRoute, FormzSubmissionStatus status});
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res, $Val extends InternetState>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noInternet = null,
    Object? lastRoute = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      noInternet: null == noInternet
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRoute: freezed == lastRoute
          ? _value.lastRoute
          : lastRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetStateImplCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$$InternetStateImplCopyWith(
          _$InternetStateImpl value, $Res Function(_$InternetStateImpl) then) =
      __$$InternetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool noInternet, String? lastRoute, FormzSubmissionStatus status});
}

/// @nodoc
class __$$InternetStateImplCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res, _$InternetStateImpl>
    implements _$$InternetStateImplCopyWith<$Res> {
  __$$InternetStateImplCopyWithImpl(
      _$InternetStateImpl _value, $Res Function(_$InternetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noInternet = null,
    Object? lastRoute = freezed,
    Object? status = null,
  }) {
    return _then(_$InternetStateImpl(
      null == noInternet
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == lastRoute
          ? _value.lastRoute
          : lastRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$InternetStateImpl implements _InternetState {
  const _$InternetStateImpl(
      [this.noInternet = false,
      this.lastRoute = null,
      this.status = FormzSubmissionStatus.initial]);

  @override
  @JsonKey()
  final bool noInternet;
  @override
  @JsonKey()
  final String? lastRoute;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'InternetState(noInternet: $noInternet, lastRoute: $lastRoute, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetStateImpl &&
            (identical(other.noInternet, noInternet) ||
                other.noInternet == noInternet) &&
            (identical(other.lastRoute, lastRoute) ||
                other.lastRoute == lastRoute) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noInternet, lastRoute, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetStateImplCopyWith<_$InternetStateImpl> get copyWith =>
      __$$InternetStateImplCopyWithImpl<_$InternetStateImpl>(this, _$identity);
}

abstract class _InternetState implements InternetState {
  const factory _InternetState(
      [final bool noInternet,
      final String? lastRoute,
      final FormzSubmissionStatus status]) = _$InternetStateImpl;

  @override
  bool get noInternet;
  @override
  String? get lastRoute;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$InternetStateImplCopyWith<_$InternetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
