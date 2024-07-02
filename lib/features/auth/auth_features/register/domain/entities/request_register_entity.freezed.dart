// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_register_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestMailRegisterEntity _$RequestMailRegisterEntityFromJson(
    Map<String, dynamic> json) {
  return _RequestMailRegisterEntity.fromJson(json);
}

/// @nodoc
mixin _$RequestMailRegisterEntity {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get phoneNumberCode => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestMailRegisterEntityCopyWith<RequestMailRegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMailRegisterEntityCopyWith<$Res> {
  factory $RequestMailRegisterEntityCopyWith(RequestMailRegisterEntity value,
          $Res Function(RequestMailRegisterEntity) then) =
      _$RequestMailRegisterEntityCopyWithImpl<$Res, RequestMailRegisterEntity>;
  @useResult
  $Res call(
      {String email,
      String password,
      String phoneNumber,
      String phoneNumberCode,
      String nickname,
      int gender});
}

/// @nodoc
class _$RequestMailRegisterEntityCopyWithImpl<$Res,
        $Val extends RequestMailRegisterEntity>
    implements $RequestMailRegisterEntityCopyWith<$Res> {
  _$RequestMailRegisterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? phoneNumberCode = null,
    Object? nickname = null,
    Object? gender = null,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberCode: null == phoneNumberCode
          ? _value.phoneNumberCode
          : phoneNumberCode // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestMailRegisterEntityImplCopyWith<$Res>
    implements $RequestMailRegisterEntityCopyWith<$Res> {
  factory _$$RequestMailRegisterEntityImplCopyWith(
          _$RequestMailRegisterEntityImpl value,
          $Res Function(_$RequestMailRegisterEntityImpl) then) =
      __$$RequestMailRegisterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String phoneNumber,
      String phoneNumberCode,
      String nickname,
      int gender});
}

/// @nodoc
class __$$RequestMailRegisterEntityImplCopyWithImpl<$Res>
    extends _$RequestMailRegisterEntityCopyWithImpl<$Res,
        _$RequestMailRegisterEntityImpl>
    implements _$$RequestMailRegisterEntityImplCopyWith<$Res> {
  __$$RequestMailRegisterEntityImplCopyWithImpl(
      _$RequestMailRegisterEntityImpl _value,
      $Res Function(_$RequestMailRegisterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? phoneNumberCode = null,
    Object? nickname = null,
    Object? gender = null,
  }) {
    return _then(_$RequestMailRegisterEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberCode: null == phoneNumberCode
          ? _value.phoneNumberCode
          : phoneNumberCode // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestMailRegisterEntityImpl implements _RequestMailRegisterEntity {
  const _$RequestMailRegisterEntityImpl(
      {required this.email,
      required this.password,
      required this.phoneNumber,
      required this.phoneNumberCode,
      required this.nickname,
      required this.gender});

  factory _$RequestMailRegisterEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestMailRegisterEntityImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  final String phoneNumberCode;
  @override
  final String nickname;
  @override
  final int gender;

  @override
  String toString() {
    return 'RequestMailRegisterEntity(email: $email, password: $password, phoneNumber: $phoneNumber, phoneNumberCode: $phoneNumberCode, nickname: $nickname, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestMailRegisterEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.phoneNumberCode, phoneNumberCode) ||
                other.phoneNumberCode == phoneNumberCode) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, phoneNumber,
      phoneNumberCode, nickname, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestMailRegisterEntityImplCopyWith<_$RequestMailRegisterEntityImpl>
      get copyWith => __$$RequestMailRegisterEntityImplCopyWithImpl<
          _$RequestMailRegisterEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestMailRegisterEntityImplToJson(
      this,
    );
  }
}

abstract class _RequestMailRegisterEntity implements RequestMailRegisterEntity {
  const factory _RequestMailRegisterEntity(
      {required final String email,
      required final String password,
      required final String phoneNumber,
      required final String phoneNumberCode,
      required final String nickname,
      required final int gender}) = _$RequestMailRegisterEntityImpl;

  factory _RequestMailRegisterEntity.fromJson(Map<String, dynamic> json) =
      _$RequestMailRegisterEntityImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  String get phoneNumberCode;
  @override
  String get nickname;
  @override
  int get gender;
  @override
  @JsonKey(ignore: true)
  _$$RequestMailRegisterEntityImplCopyWith<_$RequestMailRegisterEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
