// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_nickname_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeNicknameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeNicknameEventCopyWith<$Res> {
  factory $ChangeNicknameEventCopyWith(
          ChangeNicknameEvent value, $Res Function(ChangeNicknameEvent) then) =
      _$ChangeNicknameEventCopyWithImpl<$Res, ChangeNicknameEvent>;
}

/// @nodoc
class _$ChangeNicknameEventCopyWithImpl<$Res, $Val extends ChangeNicknameEvent>
    implements $ChangeNicknameEventCopyWith<$Res> {
  _$ChangeNicknameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NicknameChangedImplCopyWith<$Res> {
  factory _$$NicknameChangedImplCopyWith(_$NicknameChangedImpl value,
          $Res Function(_$NicknameChangedImpl) then) =
      __$$NicknameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$NicknameChangedImplCopyWithImpl<$Res>
    extends _$ChangeNicknameEventCopyWithImpl<$Res, _$NicknameChangedImpl>
    implements _$$NicknameChangedImplCopyWith<$Res> {
  __$$NicknameChangedImplCopyWithImpl(
      _$NicknameChangedImpl _value, $Res Function(_$NicknameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$NicknameChangedImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NicknameChangedImpl implements _NicknameChanged {
  const _$NicknameChangedImpl({required this.nickname});

  @override
  final String nickname;

  @override
  String toString() {
    return 'ChangeNicknameEvent.nicknameChanged(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameChangedImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      __$$NicknameChangedImplCopyWithImpl<_$NicknameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() submit,
  }) {
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? submit,
  }) {
    return nicknameChanged?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return nicknameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class _NicknameChanged implements ChangeNicknameEvent {
  const factory _NicknameChanged({required final String nickname}) =
      _$NicknameChangedImpl;

  String get nickname;
  @JsonKey(ignore: true)
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$ChangeNicknameEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'ChangeNicknameEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ChangeNicknameEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$ChangeNicknameState {
  String get nickname => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get posted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeNicknameStateCopyWith<ChangeNicknameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeNicknameStateCopyWith<$Res> {
  factory $ChangeNicknameStateCopyWith(
          ChangeNicknameState value, $Res Function(ChangeNicknameState) then) =
      _$ChangeNicknameStateCopyWithImpl<$Res, ChangeNicknameState>;
  @useResult
  $Res call({String nickname, String errorMessage, bool posted});
}

/// @nodoc
class _$ChangeNicknameStateCopyWithImpl<$Res, $Val extends ChangeNicknameState>
    implements $ChangeNicknameStateCopyWith<$Res> {
  _$ChangeNicknameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? errorMessage = null,
    Object? posted = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      posted: null == posted
          ? _value.posted
          : posted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeNicknameStateImplCopyWith<$Res>
    implements $ChangeNicknameStateCopyWith<$Res> {
  factory _$$ChangeNicknameStateImplCopyWith(_$ChangeNicknameStateImpl value,
          $Res Function(_$ChangeNicknameStateImpl) then) =
      __$$ChangeNicknameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String errorMessage, bool posted});
}

/// @nodoc
class __$$ChangeNicknameStateImplCopyWithImpl<$Res>
    extends _$ChangeNicknameStateCopyWithImpl<$Res, _$ChangeNicknameStateImpl>
    implements _$$ChangeNicknameStateImplCopyWith<$Res> {
  __$$ChangeNicknameStateImplCopyWithImpl(_$ChangeNicknameStateImpl _value,
      $Res Function(_$ChangeNicknameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? errorMessage = null,
    Object? posted = null,
  }) {
    return _then(_$ChangeNicknameStateImpl(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == posted
          ? _value.posted
          : posted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeNicknameStateImpl implements _ChangeNicknameState {
  const _$ChangeNicknameStateImpl(
      [this.nickname = "", this.errorMessage = "", this.posted = false]);

  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool posted;

  @override
  String toString() {
    return 'ChangeNicknameState(nickname: $nickname, errorMessage: $errorMessage, posted: $posted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNicknameStateImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.posted, posted) || other.posted == posted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, errorMessage, posted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNicknameStateImplCopyWith<_$ChangeNicknameStateImpl> get copyWith =>
      __$$ChangeNicknameStateImplCopyWithImpl<_$ChangeNicknameStateImpl>(
          this, _$identity);
}

abstract class _ChangeNicknameState implements ChangeNicknameState {
  const factory _ChangeNicknameState(
      [final String nickname,
      final String errorMessage,
      final bool posted]) = _$ChangeNicknameStateImpl;

  @override
  String get nickname;
  @override
  String get errorMessage;
  @override
  bool get posted;
  @override
  @JsonKey(ignore: true)
  _$$ChangeNicknameStateImplCopyWith<_$ChangeNicknameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
