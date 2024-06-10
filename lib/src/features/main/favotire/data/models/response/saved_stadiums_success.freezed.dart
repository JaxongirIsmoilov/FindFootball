// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_stadiums_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedStadiumsSuccess _$SavedStadiumsSuccessFromJson(Map<String, dynamic> json) {
  return _SavedStadiumsSuccess.fromJson(json);
}

/// @nodoc
mixin _$SavedStadiumsSuccess {
  String get id => throw _privateConstructorUsedError;
  String get ownerAccountId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  String get districtId => throw _privateConstructorUsedError;
  String get workStartHour => throw _privateConstructorUsedError;
  String get workEndingHour => throw _privateConstructorUsedError;
  dynamic get district => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  Account? get ownerAccount => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedStadiumsSuccessCopyWith<SavedStadiumsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedStadiumsSuccessCopyWith<$Res> {
  factory $SavedStadiumsSuccessCopyWith(SavedStadiumsSuccess value,
          $Res Function(SavedStadiumsSuccess) then) =
      _$SavedStadiumsSuccessCopyWithImpl<$Res, SavedStadiumsSuccess>;
  @useResult
  $Res call(
      {String id,
      String ownerAccountId,
      String name,
      Price price,
      Location location,
      String districtId,
      String workStartHour,
      String workEndingHour,
      dynamic district,
      String details,
      Account? ownerAccount,
      List<Image> images});

  $PriceCopyWith<$Res> get price;
  $LocationCopyWith<$Res> get location;
  $AccountCopyWith<$Res>? get ownerAccount;
}

/// @nodoc
class _$SavedStadiumsSuccessCopyWithImpl<$Res,
        $Val extends SavedStadiumsSuccess>
    implements $SavedStadiumsSuccessCopyWith<$Res> {
  _$SavedStadiumsSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerAccountId = null,
    Object? name = null,
    Object? price = null,
    Object? location = null,
    Object? districtId = null,
    Object? workStartHour = null,
    Object? workEndingHour = null,
    Object? district = freezed,
    Object? details = null,
    Object? ownerAccount = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAccountId: null == ownerAccountId
          ? _value.ownerAccountId
          : ownerAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String,
      workStartHour: null == workStartHour
          ? _value.workStartHour
          : workStartHour // ignore: cast_nullable_to_non_nullable
              as String,
      workEndingHour: null == workEndingHour
          ? _value.workEndingHour
          : workEndingHour // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAccount: freezed == ownerAccount
          ? _value.ownerAccount
          : ownerAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get ownerAccount {
    if (_value.ownerAccount == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.ownerAccount!, (value) {
      return _then(_value.copyWith(ownerAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavedStadiumsSuccessImplCopyWith<$Res>
    implements $SavedStadiumsSuccessCopyWith<$Res> {
  factory _$$SavedStadiumsSuccessImplCopyWith(_$SavedStadiumsSuccessImpl value,
          $Res Function(_$SavedStadiumsSuccessImpl) then) =
      __$$SavedStadiumsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerAccountId,
      String name,
      Price price,
      Location location,
      String districtId,
      String workStartHour,
      String workEndingHour,
      dynamic district,
      String details,
      Account? ownerAccount,
      List<Image> images});

  @override
  $PriceCopyWith<$Res> get price;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $AccountCopyWith<$Res>? get ownerAccount;
}

/// @nodoc
class __$$SavedStadiumsSuccessImplCopyWithImpl<$Res>
    extends _$SavedStadiumsSuccessCopyWithImpl<$Res, _$SavedStadiumsSuccessImpl>
    implements _$$SavedStadiumsSuccessImplCopyWith<$Res> {
  __$$SavedStadiumsSuccessImplCopyWithImpl(_$SavedStadiumsSuccessImpl _value,
      $Res Function(_$SavedStadiumsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerAccountId = null,
    Object? name = null,
    Object? price = null,
    Object? location = null,
    Object? districtId = null,
    Object? workStartHour = null,
    Object? workEndingHour = null,
    Object? district = freezed,
    Object? details = null,
    Object? ownerAccount = freezed,
    Object? images = null,
  }) {
    return _then(_$SavedStadiumsSuccessImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == ownerAccountId
          ? _value.ownerAccountId
          : ownerAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String,
      null == workStartHour
          ? _value.workStartHour
          : workStartHour // ignore: cast_nullable_to_non_nullable
              as String,
      null == workEndingHour
          ? _value.workEndingHour
          : workEndingHour // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == ownerAccount
          ? _value.ownerAccount
          : ownerAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedStadiumsSuccessImpl implements _SavedStadiumsSuccess {
  const _$SavedStadiumsSuccessImpl(
      this.id,
      this.ownerAccountId,
      this.name,
      this.price,
      this.location,
      this.districtId,
      this.workStartHour,
      this.workEndingHour,
      this.district,
      this.details,
      this.ownerAccount,
      final List<Image> images)
      : _images = images;

  factory _$SavedStadiumsSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedStadiumsSuccessImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerAccountId;
  @override
  final String name;
  @override
  final Price price;
  @override
  final Location location;
  @override
  final String districtId;
  @override
  final String workStartHour;
  @override
  final String workEndingHour;
  @override
  final dynamic district;
  @override
  final String details;
  @override
  final Account? ownerAccount;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SavedStadiumsSuccess(id: $id, ownerAccountId: $ownerAccountId, name: $name, price: $price, location: $location, districtId: $districtId, workStartHour: $workStartHour, workEndingHour: $workEndingHour, district: $district, details: $details, ownerAccount: $ownerAccount, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedStadiumsSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerAccountId, ownerAccountId) ||
                other.ownerAccountId == ownerAccountId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.workStartHour, workStartHour) ||
                other.workStartHour == workStartHour) &&
            (identical(other.workEndingHour, workEndingHour) ||
                other.workEndingHour == workEndingHour) &&
            const DeepCollectionEquality().equals(other.district, district) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.ownerAccount, ownerAccount) ||
                other.ownerAccount == ownerAccount) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerAccountId,
      name,
      price,
      location,
      districtId,
      workStartHour,
      workEndingHour,
      const DeepCollectionEquality().hash(district),
      details,
      ownerAccount,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedStadiumsSuccessImplCopyWith<_$SavedStadiumsSuccessImpl>
      get copyWith =>
          __$$SavedStadiumsSuccessImplCopyWithImpl<_$SavedStadiumsSuccessImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedStadiumsSuccessImplToJson(
      this,
    );
  }
}

abstract class _SavedStadiumsSuccess implements SavedStadiumsSuccess {
  const factory _SavedStadiumsSuccess(
      final String id,
      final String ownerAccountId,
      final String name,
      final Price price,
      final Location location,
      final String districtId,
      final String workStartHour,
      final String workEndingHour,
      final dynamic district,
      final String details,
      final Account? ownerAccount,
      final List<Image> images) = _$SavedStadiumsSuccessImpl;

  factory _SavedStadiumsSuccess.fromJson(Map<String, dynamic> json) =
      _$SavedStadiumsSuccessImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerAccountId;
  @override
  String get name;
  @override
  Price get price;
  @override
  Location get location;
  @override
  String get districtId;
  @override
  String get workStartHour;
  @override
  String get workEndingHour;
  @override
  dynamic get district;
  @override
  String get details;
  @override
  Account? get ownerAccount;
  @override
  List<Image> get images;
  @override
  @JsonKey(ignore: true)
  _$$SavedStadiumsSuccessImplCopyWith<_$SavedStadiumsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  String get currency => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({String currency, int amount});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency, int amount});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_$PriceImpl(
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl implements _Price {
  const _$PriceImpl(this.currency, this.amount);

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  final String currency;
  @override
  final int amount;

  @override
  String toString() {
    return 'Price(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(final String currency, final int amount) = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  String get currency;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LocationImpl(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(this.latitude, this.longitude);

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Location(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(final double latitude, final double longitude) =
      _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
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
  User? get user => throw _privateConstructorUsedError;
  dynamic get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({String id, String userId, int roleId, User? user, dynamic role});

  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
    Object? role = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
  $Res call({String id, String userId, int roleId, User? user, dynamic role});

  @override
  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
    Object? role = freezed,
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
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  final User? user;
  @override
  final dynamic role;

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
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, roleId, user,
      const DeepCollectionEquality().hash(role));

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
      final User? user, final dynamic role) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get roleId;
  @override
  User? get user;
  @override
  dynamic get role;
  @override
  @JsonKey(ignore: true)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  dynamic get gender => throw _privateConstructorUsedError;
  dynamic get age => throw _privateConstructorUsedError;
  dynamic get homeAddressId => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  List<Account> get accounts => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      dynamic gender,
      dynamic age,
      dynamic homeAddressId,
      dynamic address,
      List<Account> accounts,
      List<dynamic> images});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
    Object? accounts = null,
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
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
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
      List<Account> accounts,
      List<dynamic> images});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
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
    Object? accounts = null,
    Object? images = null,
  }) {
    return _then(_$UserImpl(
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
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      this.id,
      this.name,
      this.phoneNumber,
      this.gender,
      this.age,
      this.homeAddressId,
      this.address,
      final List<Account> accounts,
      final List<dynamic> images)
      : _accounts = accounts,
        _images = images;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

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
  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
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
    return 'User(id: $id, name: $name, phoneNumber: $phoneNumber, gender: $gender, age: $age, homeAddressId: $homeAddressId, address: $address, accounts: $accounts, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
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
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      final String id,
      final String name,
      final String phoneNumber,
      final dynamic gender,
      final dynamic age,
      final dynamic homeAddressId,
      final dynamic address,
      final List<Account> accounts,
      final List<dynamic> images) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

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
  List<Account> get accounts;
  @override
  List<dynamic> get images;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String id, String path, String name});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String path, String name});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
  }) {
    return _then(_$ImageImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(this.id, this.path, this.name);

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String name;

  @override
  String toString() {
    return 'Image(id: $id, path: $path, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(final String id, final String path, final String name) =
      _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
