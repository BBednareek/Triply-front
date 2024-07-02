// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_register_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseRegisterEntity _$ResponseRegisterEntityFromJson(
    Map<String, dynamic> json) {
  return _ResponseRegisterEntity.fromJson(json);
}

/// @nodoc
mixin _$ResponseRegisterEntity {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRegisterEntityCopyWith<ResponseRegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRegisterEntityCopyWith<$Res> {
  factory $ResponseRegisterEntityCopyWith(ResponseRegisterEntity value,
          $Res Function(ResponseRegisterEntity) then) =
      _$ResponseRegisterEntityCopyWithImpl<$Res, ResponseRegisterEntity>;
  @useResult
  $Res call({int id, String email});
}

/// @nodoc
class _$ResponseRegisterEntityCopyWithImpl<$Res,
        $Val extends ResponseRegisterEntity>
    implements $ResponseRegisterEntityCopyWith<$Res> {
  _$ResponseRegisterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseRegisterEntityImplCopyWith<$Res>
    implements $ResponseRegisterEntityCopyWith<$Res> {
  factory _$$ResponseRegisterEntityImplCopyWith(
          _$ResponseRegisterEntityImpl value,
          $Res Function(_$ResponseRegisterEntityImpl) then) =
      __$$ResponseRegisterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String email});
}

/// @nodoc
class __$$ResponseRegisterEntityImplCopyWithImpl<$Res>
    extends _$ResponseRegisterEntityCopyWithImpl<$Res,
        _$ResponseRegisterEntityImpl>
    implements _$$ResponseRegisterEntityImplCopyWith<$Res> {
  __$$ResponseRegisterEntityImplCopyWithImpl(
      _$ResponseRegisterEntityImpl _value,
      $Res Function(_$ResponseRegisterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_$ResponseRegisterEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseRegisterEntityImpl implements _ResponseRegisterEntity {
  const _$ResponseRegisterEntityImpl({required this.id, required this.email});

  factory _$ResponseRegisterEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseRegisterEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String email;

  @override
  String toString() {
    return 'ResponseRegisterEntity(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseRegisterEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseRegisterEntityImplCopyWith<_$ResponseRegisterEntityImpl>
      get copyWith => __$$ResponseRegisterEntityImplCopyWithImpl<
          _$ResponseRegisterEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseRegisterEntityImplToJson(
      this,
    );
  }
}

abstract class _ResponseRegisterEntity implements ResponseRegisterEntity {
  const factory _ResponseRegisterEntity(
      {required final int id,
      required final String email}) = _$ResponseRegisterEntityImpl;

  factory _ResponseRegisterEntity.fromJson(Map<String, dynamic> json) =
      _$ResponseRegisterEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ResponseRegisterEntityImplCopyWith<_$ResponseRegisterEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
