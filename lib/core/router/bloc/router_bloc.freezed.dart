// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RouterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Change value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterEventCopyWith<$Res> {
  factory $RouterEventCopyWith(
          RouterEvent value, $Res Function(RouterEvent) then) =
      _$RouterEventCopyWithImpl<$Res, RouterEvent>;
}

/// @nodoc
class _$RouterEventCopyWithImpl<$Res, $Val extends RouterEvent>
    implements $RouterEventCopyWith<$Res> {
  _$RouterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeImplCopyWith<$Res> {
  factory _$$ChangeImplCopyWith(
          _$ChangeImpl value, $Res Function(_$ChangeImpl) then) =
      __$$ChangeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeImplCopyWithImpl<$Res>
    extends _$RouterEventCopyWithImpl<$Res, _$ChangeImpl>
    implements _$$ChangeImplCopyWith<$Res> {
  __$$ChangeImplCopyWithImpl(
      _$ChangeImpl _value, $Res Function(_$ChangeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeImpl implements _Change {
  const _$ChangeImpl();

  @override
  String toString() {
    return 'RouterEvent.change()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() change,
  }) {
    return change();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? change,
  }) {
    return change?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Change value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements RouterEvent {
  const factory _Change() = _$ChangeImpl;
}

/// @nodoc
mixin _$RouterState {
  bool get changed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouterStateCopyWith<RouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterStateCopyWith<$Res> {
  factory $RouterStateCopyWith(
          RouterState value, $Res Function(RouterState) then) =
      _$RouterStateCopyWithImpl<$Res, RouterState>;
  @useResult
  $Res call({bool changed});
}

/// @nodoc
class _$RouterStateCopyWithImpl<$Res, $Val extends RouterState>
    implements $RouterStateCopyWith<$Res> {
  _$RouterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changed = null,
  }) {
    return _then(_value.copyWith(
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouterStateImplCopyWith<$Res>
    implements $RouterStateCopyWith<$Res> {
  factory _$$RouterStateImplCopyWith(
          _$RouterStateImpl value, $Res Function(_$RouterStateImpl) then) =
      __$$RouterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool changed});
}

/// @nodoc
class __$$RouterStateImplCopyWithImpl<$Res>
    extends _$RouterStateCopyWithImpl<$Res, _$RouterStateImpl>
    implements _$$RouterStateImplCopyWith<$Res> {
  __$$RouterStateImplCopyWithImpl(
      _$RouterStateImpl _value, $Res Function(_$RouterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changed = null,
  }) {
    return _then(_$RouterStateImpl(
      null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RouterStateImpl implements _RouterState {
  const _$RouterStateImpl([this.changed = false]);

  @override
  @JsonKey()
  final bool changed;

  @override
  String toString() {
    return 'RouterState(changed: $changed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouterStateImpl &&
            (identical(other.changed, changed) || other.changed == changed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouterStateImplCopyWith<_$RouterStateImpl> get copyWith =>
      __$$RouterStateImplCopyWithImpl<_$RouterStateImpl>(this, _$identity);
}

abstract class _RouterState implements RouterState {
  const factory _RouterState([final bool changed]) = _$RouterStateImpl;

  @override
  bool get changed;
  @override
  @JsonKey(ignore: true)
  _$$RouterStateImplCopyWith<_$RouterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
