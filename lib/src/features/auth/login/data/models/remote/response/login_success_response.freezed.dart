// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginSuccessResponse _$LoginSuccessResponseFromJson(Map<String, dynamic> json) {
  return _LoginSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginSuccessResponse {
  String get userId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  int get expiresInMinutes => throw _privateConstructorUsedError;
  String get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginSuccessResponseCopyWith<LoginSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessResponseCopyWith<$Res> {
  factory $LoginSuccessResponseCopyWith(LoginSuccessResponse value,
          $Res Function(LoginSuccessResponse) then) =
      _$LoginSuccessResponseCopyWithImpl<$Res, LoginSuccessResponse>;
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
class _$LoginSuccessResponseCopyWithImpl<$Res,
        $Val extends LoginSuccessResponse>
    implements $LoginSuccessResponseCopyWith<$Res> {
  _$LoginSuccessResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginSuccessResponseImplCopyWith<$Res>
    implements $LoginSuccessResponseCopyWith<$Res> {
  factory _$$LoginSuccessResponseImplCopyWith(_$LoginSuccessResponseImpl value,
          $Res Function(_$LoginSuccessResponseImpl) then) =
      __$$LoginSuccessResponseImplCopyWithImpl<$Res>;
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
class __$$LoginSuccessResponseImplCopyWithImpl<$Res>
    extends _$LoginSuccessResponseCopyWithImpl<$Res, _$LoginSuccessResponseImpl>
    implements _$$LoginSuccessResponseImplCopyWith<$Res> {
  __$$LoginSuccessResponseImplCopyWithImpl(_$LoginSuccessResponseImpl _value,
      $Res Function(_$LoginSuccessResponseImpl) _then)
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
    return _then(_$LoginSuccessResponseImpl(
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
class _$LoginSuccessResponseImpl implements _LoginSuccessResponse {
  const _$LoginSuccessResponseImpl(this.userId, this.accessToken,
      this.refreshToken, this.tokenType, this.expiresInMinutes, this.roles);

  factory _$LoginSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginSuccessResponseImplFromJson(json);

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
    return 'LoginSuccessResponse(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresInMinutes: $expiresInMinutes, roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessResponseImpl &&
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
  _$$LoginSuccessResponseImplCopyWith<_$LoginSuccessResponseImpl>
      get copyWith =>
          __$$LoginSuccessResponseImplCopyWithImpl<_$LoginSuccessResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginSuccessResponse implements LoginSuccessResponse {
  const factory _LoginSuccessResponse(
      final String userId,
      final String accessToken,
      final String refreshToken,
      final String tokenType,
      final int expiresInMinutes,
      final String roles) = _$LoginSuccessResponseImpl;

  factory _LoginSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$LoginSuccessResponseImpl.fromJson;

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
  _$$LoginSuccessResponseImplCopyWith<_$LoginSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
