// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_email_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeEmailEntity _$ChangeEmailEntityFromJson(Map<String, dynamic> json) {
  return _ChangeEmailEntity.fromJson(json);
}

/// @nodoc
mixin _$ChangeEmailEntity {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeEmailEntityCopyWith<ChangeEmailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeEmailEntityCopyWith<$Res> {
  factory $ChangeEmailEntityCopyWith(
          ChangeEmailEntity value, $Res Function(ChangeEmailEntity) then) =
      _$ChangeEmailEntityCopyWithImpl<$Res, ChangeEmailEntity>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$ChangeEmailEntityCopyWithImpl<$Res, $Val extends ChangeEmailEntity>
    implements $ChangeEmailEntityCopyWith<$Res> {
  _$ChangeEmailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeEmailEntityImplCopyWith<$Res>
    implements $ChangeEmailEntityCopyWith<$Res> {
  factory _$$ChangeEmailEntityImplCopyWith(_$ChangeEmailEntityImpl value,
          $Res Function(_$ChangeEmailEntityImpl) then) =
      __$$ChangeEmailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$ChangeEmailEntityImplCopyWithImpl<$Res>
    extends _$ChangeEmailEntityCopyWithImpl<$Res, _$ChangeEmailEntityImpl>
    implements _$$ChangeEmailEntityImplCopyWith<$Res> {
  __$$ChangeEmailEntityImplCopyWithImpl(_$ChangeEmailEntityImpl _value,
      $Res Function(_$ChangeEmailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ChangeEmailEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeEmailEntityImpl implements _ChangeEmailEntity {
  const _$ChangeEmailEntityImpl({required this.email, required this.password});

  factory _$ChangeEmailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeEmailEntityImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ChangeEmailEntity(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEmailEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEmailEntityImplCopyWith<_$ChangeEmailEntityImpl> get copyWith =>
      __$$ChangeEmailEntityImplCopyWithImpl<_$ChangeEmailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeEmailEntityImplToJson(
      this,
    );
  }
}

abstract class _ChangeEmailEntity implements ChangeEmailEntity {
  const factory _ChangeEmailEntity(
      {required final String email,
      required final String password}) = _$ChangeEmailEntityImpl;

  factory _ChangeEmailEntity.fromJson(Map<String, dynamic> json) =
      _$ChangeEmailEntityImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ChangeEmailEntityImplCopyWith<_$ChangeEmailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
