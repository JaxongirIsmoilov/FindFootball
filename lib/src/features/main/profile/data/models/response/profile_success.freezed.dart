// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileSuccess _$ProfileSuccessFromJson(Map<String, dynamic> json) {
  return _ProfileSuccess.fromJson(json);
}

/// @nodoc
mixin _$ProfileSuccess {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  dynamic get gender => throw _privateConstructorUsedError;
  dynamic get age => throw _privateConstructorUsedError;
  dynamic get homeAddressId => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  List<Account>? get accounts => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileSuccessCopyWith<ProfileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSuccessCopyWith<$Res> {
  factory $ProfileSuccessCopyWith(
          ProfileSuccess value, $Res Function(ProfileSuccess) then) =
      _$ProfileSuccessCopyWithImpl<$Res, ProfileSuccess>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      dynamic gender,
      dynamic age,
      dynamic homeAddressId,
      dynamic address,
      List<Account>? accounts,
      List<dynamic> images});
}

/// @nodoc
class _$ProfileSuccessCopyWithImpl<$Res, $Val extends ProfileSuccess>
    implements $ProfileSuccessCopyWith<$Res> {
  _$ProfileSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? gender = freezed,
    Object? age = freezed,
    Object? homeAddressId = freezed,
    Object? address = freezed,
    Object? accounts = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeAddressId: freezed == homeAddressId
          ? _value.homeAddressId
          : homeAddressId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSuccessImplCopyWith<$Res>
    implements $ProfileSuccessCopyWith<$Res> {
  factory _$$ProfileSuccessImplCopyWith(_$ProfileSuccessImpl value,
          $Res Function(_$ProfileSuccessImpl) then) =
      __$$ProfileSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      dynamic gender,
      dynamic age,
      dynamic homeAddressId,
      dynamic address,
      List<Account>? accounts,
      List<dynamic> images});
}

/// @nodoc
class __$$ProfileSuccessImplCopyWithImpl<$Res>
    extends _$ProfileSuccessCopyWithImpl<$Res, _$ProfileSuccessImpl>
    implements _$$ProfileSuccessImplCopyWith<$Res> {
  __$$ProfileSuccessImplCopyWithImpl(
      _$ProfileSuccessImpl _value, $Res Function(_$ProfileSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? gender = freezed,
    Object? age = freezed,
    Object? homeAddressId = freezed,
    Object? address = freezed,
    Object? accounts = freezed,
    Object? images = null,
  }) {
    return _then(_$ProfileSuccessImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == homeAddressId
          ? _value.homeAddressId
          : homeAddressId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileSuccessImpl implements _ProfileSuccess {
  const _$ProfileSuccessImpl(
      this.id,
      this.name,
      this.phoneNumber,
      this.gender,
      this.age,
      this.homeAddressId,
      this.address,
      final List<Account>? accounts,
      final List<dynamic> images)
      : _accounts = accounts,
        _images = images;

  factory _$ProfileSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileSuccessImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final dynamic gender;
  @override
  final dynamic age;
  @override
  final dynamic homeAddressId;
  @override
  final dynamic address;
  final List<Account>? _accounts;
  @override
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic> _images;
  @override
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProfileSuccess(id: $id, name: $name, phoneNumber: $phoneNumber, gender: $gender, age: $age, homeAddressId: $homeAddressId, address: $address, accounts: $accounts, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality()
                .equals(other.homeAddressId, homeAddressId) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phoneNumber,
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(homeAddressId),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSuccessImplCopyWith<_$ProfileSuccessImpl> get copyWith =>
      __$$ProfileSuccessImplCopyWithImpl<_$ProfileSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileSuccessImplToJson(
      this,
    );
  }
}

abstract class _ProfileSuccess implements ProfileSuccess {
  const factory _ProfileSuccess(
      final String id,
      final String name,
      final String phoneNumber,
      final dynamic gender,
      final dynamic age,
      final dynamic homeAddressId,
      final dynamic address,
      final List<Account>? accounts,
      final List<dynamic> images) = _$ProfileSuccessImpl;

  factory _ProfileSuccess.fromJson(Map<String, dynamic> json) =
      _$ProfileSuccessImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  dynamic get gender;
  @override
  dynamic get age;
  @override
  dynamic get homeAddressId;
  @override
  dynamic get address;
  @override
  List<Account>? get accounts;
  @override
  List<dynamic> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProfileSuccessImplCopyWith<_$ProfileSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;
  ProfileSuccess get user => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id, String userId, int roleId, ProfileSuccess user, Role role});

  $ProfileSuccessCopyWith<$Res> get user;
  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? roleId = null,
    Object? user = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileSuccess,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileSuccessCopyWith<$Res> get user {
    return $ProfileSuccessCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String userId, int roleId, ProfileSuccess user, Role role});

  @override
  $ProfileSuccessCopyWith<$Res> get user;
  @override
  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? roleId = null,
    Object? user = null,
    Object? role = null,
  }) {
    return _then(_$AccountImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileSuccess,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(this.id, this.userId, this.roleId, this.user, this.role);

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final int roleId;
  @override
  final ProfileSuccess user;
  @override
  final Role role;

  @override
  String toString() {
    return 'Account(id: $id, userId: $userId, roleId: $roleId, user: $user, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, roleId, user, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(final String id, final String userId, final int roleId,
      final ProfileSuccess user, final Role role) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get roleId;
  @override
  ProfileSuccess get user;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({int id, String type});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
          _$RoleImpl value, $Res Function(_$RoleImpl) then) =
      __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$RoleImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  const _$RoleImpl(this.id, this.type);

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final int id;
  @override
  final String type;

  @override
  String toString() {
    return 'Role(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  const factory _Role(final int id, final String type) = _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
