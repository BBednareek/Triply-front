// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordEntity _$ChangePasswordEntityFromJson(Map<String, dynamic> json) {
  return _ChangePasswordEntity.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordEntity {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordEntityCopyWith<ChangePasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEntityCopyWith<$Res> {
  factory $ChangePasswordEntityCopyWith(ChangePasswordEntity value,
          $Res Function(ChangePasswordEntity) then) =
      _$ChangePasswordEntityCopyWithImpl<$Res, ChangePasswordEntity>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ChangePasswordEntityCopyWithImpl<$Res,
        $Val extends ChangePasswordEntity>
    implements $ChangePasswordEntityCopyWith<$Res> {
  _$ChangePasswordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordEntityImplCopyWith<$Res>
    implements $ChangePasswordEntityCopyWith<$Res> {
  factory _$$ChangePasswordEntityImplCopyWith(_$ChangePasswordEntityImpl value,
          $Res Function(_$ChangePasswordEntityImpl) then) =
      __$$ChangePasswordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$ChangePasswordEntityImplCopyWithImpl<$Res>
    extends _$ChangePasswordEntityCopyWithImpl<$Res, _$ChangePasswordEntityImpl>
    implements _$$ChangePasswordEntityImplCopyWith<$Res> {
  __$$ChangePasswordEntityImplCopyWithImpl(_$ChangePasswordEntityImpl _value,
      $Res Function(_$ChangePasswordEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$ChangePasswordEntityImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordEntityImpl implements _ChangePasswordEntity {
  const _$ChangePasswordEntityImpl(
      {required this.oldPassword, required this.newPassword});

  factory _$ChangePasswordEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordEntityImplFromJson(json);

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordEntity(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordEntityImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordEntityImplCopyWith<_$ChangePasswordEntityImpl>
      get copyWith =>
          __$$ChangePasswordEntityImplCopyWithImpl<_$ChangePasswordEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordEntityImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordEntity implements ChangePasswordEntity {
  const factory _ChangePasswordEntity(
      {required final String oldPassword,
      required final String newPassword}) = _$ChangePasswordEntityImpl;

  factory _ChangePasswordEntity.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordEntityImpl.fromJson;

  @override
  String get oldPassword;
  @override
  String get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordEntityImplCopyWith<_$ChangePasswordEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
