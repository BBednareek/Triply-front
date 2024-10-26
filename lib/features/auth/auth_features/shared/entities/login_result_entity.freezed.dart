// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResultEntity _$LoginResultEntityFromJson(Map<String, dynamic> json) {
  return _LoginResultEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResultEntity {
  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultEntityCopyWith<LoginResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultEntityCopyWith<$Res> {
  factory $LoginResultEntityCopyWith(
          LoginResultEntity value, $Res Function(LoginResultEntity) then) =
      _$LoginResultEntityCopyWithImpl<$Res, LoginResultEntity>;
  @useResult
  $Res call({String accessToken, String userId});
}

/// @nodoc
class _$LoginResultEntityCopyWithImpl<$Res, $Val extends LoginResultEntity>
    implements $LoginResultEntityCopyWith<$Res> {
  _$LoginResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultEntityImplCopyWith<$Res>
    implements $LoginResultEntityCopyWith<$Res> {
  factory _$$LoginResultEntityImplCopyWith(_$LoginResultEntityImpl value,
          $Res Function(_$LoginResultEntityImpl) then) =
      __$$LoginResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String userId});
}

/// @nodoc
class __$$LoginResultEntityImplCopyWithImpl<$Res>
    extends _$LoginResultEntityCopyWithImpl<$Res, _$LoginResultEntityImpl>
    implements _$$LoginResultEntityImplCopyWith<$Res> {
  __$$LoginResultEntityImplCopyWithImpl(_$LoginResultEntityImpl _value,
      $Res Function(_$LoginResultEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? userId = null,
  }) {
    return _then(_$LoginResultEntityImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultEntityImpl implements _LoginResultEntity {
  const _$LoginResultEntityImpl(
      {required this.accessToken, required this.userId});

  factory _$LoginResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultEntityImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'LoginResultEntity(accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultEntityImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultEntityImplCopyWith<_$LoginResultEntityImpl> get copyWith =>
      __$$LoginResultEntityImplCopyWithImpl<_$LoginResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginResultEntity implements LoginResultEntity {
  const factory _LoginResultEntity(
      {required final String accessToken,
      required final String userId}) = _$LoginResultEntityImpl;

  factory _LoginResultEntity.fromJson(Map<String, dynamic> json) =
      _$LoginResultEntityImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultEntityImplCopyWith<_$LoginResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
