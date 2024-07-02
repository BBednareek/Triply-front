// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'third_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThirdAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseUserEntity user) googleApi,
    required TResult Function() googleFirebase,
    required TResult Function(FirebaseUserEntity user) appleApi,
    required TResult Function() appleFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseUserEntity user)? googleApi,
    TResult? Function()? googleFirebase,
    TResult? Function(FirebaseUserEntity user)? appleApi,
    TResult? Function()? appleFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseUserEntity user)? googleApi,
    TResult Function()? googleFirebase,
    TResult Function(FirebaseUserEntity user)? appleApi,
    TResult Function()? appleFirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoogleApi value) googleApi,
    required TResult Function(_GoogleFirebase value) googleFirebase,
    required TResult Function(_AppleApi value) appleApi,
    required TResult Function(_AppleFirebase value) appleFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GoogleApi value)? googleApi,
    TResult? Function(_GoogleFirebase value)? googleFirebase,
    TResult? Function(_AppleApi value)? appleApi,
    TResult? Function(_AppleFirebase value)? appleFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoogleApi value)? googleApi,
    TResult Function(_GoogleFirebase value)? googleFirebase,
    TResult Function(_AppleApi value)? appleApi,
    TResult Function(_AppleFirebase value)? appleFirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdAuthEventCopyWith<$Res> {
  factory $ThirdAuthEventCopyWith(
          ThirdAuthEvent value, $Res Function(ThirdAuthEvent) then) =
      _$ThirdAuthEventCopyWithImpl<$Res, ThirdAuthEvent>;
}

/// @nodoc
class _$ThirdAuthEventCopyWithImpl<$Res, $Val extends ThirdAuthEvent>
    implements $ThirdAuthEventCopyWith<$Res> {
  _$ThirdAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GoogleApiImplCopyWith<$Res> {
  factory _$$GoogleApiImplCopyWith(
          _$GoogleApiImpl value, $Res Function(_$GoogleApiImpl) then) =
      __$$GoogleApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseUserEntity user});
}

/// @nodoc
class __$$GoogleApiImplCopyWithImpl<$Res>
    extends _$ThirdAuthEventCopyWithImpl<$Res, _$GoogleApiImpl>
    implements _$$GoogleApiImplCopyWith<$Res> {
  __$$GoogleApiImplCopyWithImpl(
      _$GoogleApiImpl _value, $Res Function(_$GoogleApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GoogleApiImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FirebaseUserEntity,
    ));
  }
}

/// @nodoc

class _$GoogleApiImpl implements _GoogleApi {
  const _$GoogleApiImpl(this.user);

  @override
  final FirebaseUserEntity user;

  @override
  String toString() {
    return 'ThirdAuthEvent.googleApi(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleApiImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleApiImplCopyWith<_$GoogleApiImpl> get copyWith =>
      __$$GoogleApiImplCopyWithImpl<_$GoogleApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseUserEntity user) googleApi,
    required TResult Function() googleFirebase,
    required TResult Function(FirebaseUserEntity user) appleApi,
    required TResult Function() appleFirebase,
  }) {
    return googleApi(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseUserEntity user)? googleApi,
    TResult? Function()? googleFirebase,
    TResult? Function(FirebaseUserEntity user)? appleApi,
    TResult? Function()? appleFirebase,
  }) {
    return googleApi?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseUserEntity user)? googleApi,
    TResult Function()? googleFirebase,
    TResult Function(FirebaseUserEntity user)? appleApi,
    TResult Function()? appleFirebase,
    required TResult orElse(),
  }) {
    if (googleApi != null) {
      return googleApi(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoogleApi value) googleApi,
    required TResult Function(_GoogleFirebase value) googleFirebase,
    required TResult Function(_AppleApi value) appleApi,
    required TResult Function(_AppleFirebase value) appleFirebase,
  }) {
    return googleApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GoogleApi value)? googleApi,
    TResult? Function(_GoogleFirebase value)? googleFirebase,
    TResult? Function(_AppleApi value)? appleApi,
    TResult? Function(_AppleFirebase value)? appleFirebase,
  }) {
    return googleApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoogleApi value)? googleApi,
    TResult Function(_GoogleFirebase value)? googleFirebase,
    TResult Function(_AppleApi value)? appleApi,
    TResult Function(_AppleFirebase value)? appleFirebase,
    required TResult orElse(),
  }) {
    if (googleApi != null) {
      return googleApi(this);
    }
    return orElse();
  }
}

abstract class _GoogleApi implements ThirdAuthEvent {
  const factory _GoogleApi(final FirebaseUserEntity user) = _$GoogleApiImpl;

  FirebaseUserEntity get user;
  @JsonKey(ignore: true)
  _$$GoogleApiImplCopyWith<_$GoogleApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleFirebaseImplCopyWith<$Res> {
  factory _$$GoogleFirebaseImplCopyWith(_$GoogleFirebaseImpl value,
          $Res Function(_$GoogleFirebaseImpl) then) =
      __$$GoogleFirebaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleFirebaseImplCopyWithImpl<$Res>
    extends _$ThirdAuthEventCopyWithImpl<$Res, _$GoogleFirebaseImpl>
    implements _$$GoogleFirebaseImplCopyWith<$Res> {
  __$$GoogleFirebaseImplCopyWithImpl(
      _$GoogleFirebaseImpl _value, $Res Function(_$GoogleFirebaseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleFirebaseImpl implements _GoogleFirebase {
  const _$GoogleFirebaseImpl();

  @override
  String toString() {
    return 'ThirdAuthEvent.googleFirebase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleFirebaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseUserEntity user) googleApi,
    required TResult Function() googleFirebase,
    required TResult Function(FirebaseUserEntity user) appleApi,
    required TResult Function() appleFirebase,
  }) {
    return googleFirebase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseUserEntity user)? googleApi,
    TResult? Function()? googleFirebase,
    TResult? Function(FirebaseUserEntity user)? appleApi,
    TResult? Function()? appleFirebase,
  }) {
    return googleFirebase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseUserEntity user)? googleApi,
    TResult Function()? googleFirebase,
    TResult Function(FirebaseUserEntity user)? appleApi,
    TResult Function()? appleFirebase,
    required TResult orElse(),
  }) {
    if (googleFirebase != null) {
      return googleFirebase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoogleApi value) googleApi,
    required TResult Function(_GoogleFirebase value) googleFirebase,
    required TResult Function(_AppleApi value) appleApi,
    required TResult Function(_AppleFirebase value) appleFirebase,
  }) {
    return googleFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GoogleApi value)? googleApi,
    TResult? Function(_GoogleFirebase value)? googleFirebase,
    TResult? Function(_AppleApi value)? appleApi,
    TResult? Function(_AppleFirebase value)? appleFirebase,
  }) {
    return googleFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoogleApi value)? googleApi,
    TResult Function(_GoogleFirebase value)? googleFirebase,
    TResult Function(_AppleApi value)? appleApi,
    TResult Function(_AppleFirebase value)? appleFirebase,
    required TResult orElse(),
  }) {
    if (googleFirebase != null) {
      return googleFirebase(this);
    }
    return orElse();
  }
}

abstract class _GoogleFirebase implements ThirdAuthEvent {
  const factory _GoogleFirebase() = _$GoogleFirebaseImpl;
}

/// @nodoc
abstract class _$$AppleApiImplCopyWith<$Res> {
  factory _$$AppleApiImplCopyWith(
          _$AppleApiImpl value, $Res Function(_$AppleApiImpl) then) =
      __$$AppleApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseUserEntity user});
}

/// @nodoc
class __$$AppleApiImplCopyWithImpl<$Res>
    extends _$ThirdAuthEventCopyWithImpl<$Res, _$AppleApiImpl>
    implements _$$AppleApiImplCopyWith<$Res> {
  __$$AppleApiImplCopyWithImpl(
      _$AppleApiImpl _value, $Res Function(_$AppleApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AppleApiImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FirebaseUserEntity,
    ));
  }
}

/// @nodoc

class _$AppleApiImpl implements _AppleApi {
  const _$AppleApiImpl(this.user);

  @override
  final FirebaseUserEntity user;

  @override
  String toString() {
    return 'ThirdAuthEvent.appleApi(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppleApiImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppleApiImplCopyWith<_$AppleApiImpl> get copyWith =>
      __$$AppleApiImplCopyWithImpl<_$AppleApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseUserEntity user) googleApi,
    required TResult Function() googleFirebase,
    required TResult Function(FirebaseUserEntity user) appleApi,
    required TResult Function() appleFirebase,
  }) {
    return appleApi(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseUserEntity user)? googleApi,
    TResult? Function()? googleFirebase,
    TResult? Function(FirebaseUserEntity user)? appleApi,
    TResult? Function()? appleFirebase,
  }) {
    return appleApi?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseUserEntity user)? googleApi,
    TResult Function()? googleFirebase,
    TResult Function(FirebaseUserEntity user)? appleApi,
    TResult Function()? appleFirebase,
    required TResult orElse(),
  }) {
    if (appleApi != null) {
      return appleApi(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoogleApi value) googleApi,
    required TResult Function(_GoogleFirebase value) googleFirebase,
    required TResult Function(_AppleApi value) appleApi,
    required TResult Function(_AppleFirebase value) appleFirebase,
  }) {
    return appleApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GoogleApi value)? googleApi,
    TResult? Function(_GoogleFirebase value)? googleFirebase,
    TResult? Function(_AppleApi value)? appleApi,
    TResult? Function(_AppleFirebase value)? appleFirebase,
  }) {
    return appleApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoogleApi value)? googleApi,
    TResult Function(_GoogleFirebase value)? googleFirebase,
    TResult Function(_AppleApi value)? appleApi,
    TResult Function(_AppleFirebase value)? appleFirebase,
    required TResult orElse(),
  }) {
    if (appleApi != null) {
      return appleApi(this);
    }
    return orElse();
  }
}

abstract class _AppleApi implements ThirdAuthEvent {
  const factory _AppleApi(final FirebaseUserEntity user) = _$AppleApiImpl;

  FirebaseUserEntity get user;
  @JsonKey(ignore: true)
  _$$AppleApiImplCopyWith<_$AppleApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppleFirebaseImplCopyWith<$Res> {
  factory _$$AppleFirebaseImplCopyWith(
          _$AppleFirebaseImpl value, $Res Function(_$AppleFirebaseImpl) then) =
      __$$AppleFirebaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppleFirebaseImplCopyWithImpl<$Res>
    extends _$ThirdAuthEventCopyWithImpl<$Res, _$AppleFirebaseImpl>
    implements _$$AppleFirebaseImplCopyWith<$Res> {
  __$$AppleFirebaseImplCopyWithImpl(
      _$AppleFirebaseImpl _value, $Res Function(_$AppleFirebaseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppleFirebaseImpl implements _AppleFirebase {
  const _$AppleFirebaseImpl();

  @override
  String toString() {
    return 'ThirdAuthEvent.appleFirebase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppleFirebaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseUserEntity user) googleApi,
    required TResult Function() googleFirebase,
    required TResult Function(FirebaseUserEntity user) appleApi,
    required TResult Function() appleFirebase,
  }) {
    return appleFirebase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseUserEntity user)? googleApi,
    TResult? Function()? googleFirebase,
    TResult? Function(FirebaseUserEntity user)? appleApi,
    TResult? Function()? appleFirebase,
  }) {
    return appleFirebase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseUserEntity user)? googleApi,
    TResult Function()? googleFirebase,
    TResult Function(FirebaseUserEntity user)? appleApi,
    TResult Function()? appleFirebase,
    required TResult orElse(),
  }) {
    if (appleFirebase != null) {
      return appleFirebase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoogleApi value) googleApi,
    required TResult Function(_GoogleFirebase value) googleFirebase,
    required TResult Function(_AppleApi value) appleApi,
    required TResult Function(_AppleFirebase value) appleFirebase,
  }) {
    return appleFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GoogleApi value)? googleApi,
    TResult? Function(_GoogleFirebase value)? googleFirebase,
    TResult? Function(_AppleApi value)? appleApi,
    TResult? Function(_AppleFirebase value)? appleFirebase,
  }) {
    return appleFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoogleApi value)? googleApi,
    TResult Function(_GoogleFirebase value)? googleFirebase,
    TResult Function(_AppleApi value)? appleApi,
    TResult Function(_AppleFirebase value)? appleFirebase,
    required TResult orElse(),
  }) {
    if (appleFirebase != null) {
      return appleFirebase(this);
    }
    return orElse();
  }
}

abstract class _AppleFirebase implements ThirdAuthEvent {
  const factory _AppleFirebase() = _$AppleFirebaseImpl;
}

/// @nodoc
mixin _$ThirdAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdAuthStateCopyWith<$Res> {
  factory $ThirdAuthStateCopyWith(
          ThirdAuthState value, $Res Function(ThirdAuthState) then) =
      _$ThirdAuthStateCopyWithImpl<$Res, ThirdAuthState>;
}

/// @nodoc
class _$ThirdAuthStateCopyWithImpl<$Res, $Val extends ThirdAuthState>
    implements $ThirdAuthStateCopyWith<$Res> {
  _$ThirdAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ThirdAuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ThirdAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThirdAuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ThirdAuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ThirdAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ThirdAuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ThirdAuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'ThirdAuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ThirdAuthState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ThirdAuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ThirdAuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ThirdAuthState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
