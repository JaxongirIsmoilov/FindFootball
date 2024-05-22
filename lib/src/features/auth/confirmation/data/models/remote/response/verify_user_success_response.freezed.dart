// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user_success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyUserSuccessResponse _$VerifyUserSuccessResponseFromJson(
    Map<String, dynamic> json) {
  return _VerifyUserSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyUserSuccessResponse {
  String get userId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  int get expiresInMinutes => throw _privateConstructorUsedError;
  String get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyUserSuccessResponseCopyWith<VerifyUserSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserSuccessResponseCopyWith<$Res> {
  factory $VerifyUserSuccessResponseCopyWith(VerifyUserSuccessResponse value,
          $Res Function(VerifyUserSuccessResponse) then) =
      _$VerifyUserSuccessResponseCopyWithImpl<$Res, VerifyUserSuccessResponse>;
  @useResult
  $Res call(
      {String userId,
      String accessToken,
      String refreshToken,
      String tokenType,
      int expiresInMinutes,
      String roles});
}

/// @nodoc
class _$VerifyUserSuccessResponseCopyWithImpl<$Res,
        $Val extends VerifyUserSuccessResponse>
    implements $VerifyUserSuccessResponseCopyWith<$Res> {
  _$VerifyUserSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresInMinutes = null,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInMinutes: null == expiresInMinutes
          ? _value.expiresInMinutes
          : expiresInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyUserSuccessResponseImplCopyWith<$Res>
    implements $VerifyUserSuccessResponseCopyWith<$Res> {
  factory _$$VerifyUserSuccessResponseImplCopyWith(
          _$VerifyUserSuccessResponseImpl value,
          $Res Function(_$VerifyUserSuccessResponseImpl) then) =
      __$$VerifyUserSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String accessToken,
      String refreshToken,
      String tokenType,
      int expiresInMinutes,
      String roles});
}

/// @nodoc
class __$$VerifyUserSuccessResponseImplCopyWithImpl<$Res>
    extends _$VerifyUserSuccessResponseCopyWithImpl<$Res,
        _$VerifyUserSuccessResponseImpl>
    implements _$$VerifyUserSuccessResponseImplCopyWith<$Res> {
  __$$VerifyUserSuccessResponseImplCopyWithImpl(
      _$VerifyUserSuccessResponseImpl _value,
      $Res Function(_$VerifyUserSuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresInMinutes = null,
    Object? roles = null,
  }) {
    return _then(_$VerifyUserSuccessResponseImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiresInMinutes
          ? _value.expiresInMinutes
          : expiresInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyUserSuccessResponseImpl implements _VerifyUserSuccessResponse {
  const _$VerifyUserSuccessResponseImpl(this.userId, this.accessToken,
      this.refreshToken, this.tokenType, this.expiresInMinutes, this.roles);

  factory _$VerifyUserSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyUserSuccessResponseImplFromJson(json);

  @override
  final String userId;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String tokenType;
  @override
  final int expiresInMinutes;
  @override
  final String roles;

  @override
  String toString() {
    return 'VerifyUserSuccessResponse(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresInMinutes: $expiresInMinutes, roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserSuccessResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresInMinutes, expiresInMinutes) ||
                other.expiresInMinutes == expiresInMinutes) &&
            (identical(other.roles, roles) || other.roles == roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, accessToken,
      refreshToken, tokenType, expiresInMinutes, roles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserSuccessResponseImplCopyWith<_$VerifyUserSuccessResponseImpl>
      get copyWith => __$$VerifyUserSuccessResponseImplCopyWithImpl<
          _$VerifyUserSuccessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyUserSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyUserSuccessResponse implements VerifyUserSuccessResponse {
  const factory _VerifyUserSuccessResponse(
      final String userId,
      final String accessToken,
      final String refreshToken,
      final String tokenType,
      final int expiresInMinutes,
      final String roles) = _$VerifyUserSuccessResponseImpl;

  factory _VerifyUserSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyUserSuccessResponseImpl.fromJson;

  @override
  String get userId;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get tokenType;
  @override
  int get expiresInMinutes;
  @override
  String get roles;
  @override
  @JsonKey(ignore: true)
  _$$VerifyUserSuccessResponseImplCopyWith<_$VerifyUserSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
