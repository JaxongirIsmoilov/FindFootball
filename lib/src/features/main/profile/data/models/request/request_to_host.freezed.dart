// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_to_host.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestToHost _$RequestToHostFromJson(Map<String, dynamic> json) {
  return _RequestToHost.fromJson(json);
}

/// @nodoc
mixin _$RequestToHost {
  String get userId => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestToHostCopyWith<RequestToHost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestToHostCopyWith<$Res> {
  factory $RequestToHostCopyWith(
          RequestToHost value, $Res Function(RequestToHost) then) =
      _$RequestToHostCopyWithImpl<$Res, RequestToHost>;
  @useResult
  $Res call({String userId, int roleId});
}

/// @nodoc
class _$RequestToHostCopyWithImpl<$Res, $Val extends RequestToHost>
    implements $RequestToHostCopyWith<$Res> {
  _$RequestToHostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestToHostImplCopyWith<$Res>
    implements $RequestToHostCopyWith<$Res> {
  factory _$$RequestToHostImplCopyWith(
          _$RequestToHostImpl value, $Res Function(_$RequestToHostImpl) then) =
      __$$RequestToHostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int roleId});
}

/// @nodoc
class __$$RequestToHostImplCopyWithImpl<$Res>
    extends _$RequestToHostCopyWithImpl<$Res, _$RequestToHostImpl>
    implements _$$RequestToHostImplCopyWith<$Res> {
  __$$RequestToHostImplCopyWithImpl(
      _$RequestToHostImpl _value, $Res Function(_$RequestToHostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
  }) {
    return _then(_$RequestToHostImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestToHostImpl implements _RequestToHost {
  const _$RequestToHostImpl(this.userId, this.roleId);

  factory _$RequestToHostImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestToHostImplFromJson(json);

  @override
  final String userId;
  @override
  final int roleId;

  @override
  String toString() {
    return 'RequestToHost(userId: $userId, roleId: $roleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestToHostImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, roleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestToHostImplCopyWith<_$RequestToHostImpl> get copyWith =>
      __$$RequestToHostImplCopyWithImpl<_$RequestToHostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestToHostImplToJson(
      this,
    );
  }
}

abstract class _RequestToHost implements RequestToHost {
  const factory _RequestToHost(final String userId, final int roleId) =
      _$RequestToHostImpl;

  factory _RequestToHost.fromJson(Map<String, dynamic> json) =
      _$RequestToHostImpl.fromJson;

  @override
  String get userId;
  @override
  int get roleId;
  @override
  @JsonKey(ignore: true)
  _$$RequestToHostImplCopyWith<_$RequestToHostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
