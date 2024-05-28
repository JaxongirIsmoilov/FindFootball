// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_stadiums_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllStadiumsSuccess _$AllStadiumsSuccessFromJson(Map<String, dynamic> json) {
  return _AllStadiumsSuccess.fromJson(json);
}

/// @nodoc
mixin _$AllStadiumsSuccess {
  String get id => throw _privateConstructorUsedError;
  String get ownerAccountId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  String get districtId => throw _privateConstructorUsedError;
  String? get workStartHour => throw _privateConstructorUsedError;
  String? get workEndingHour => throw _privateConstructorUsedError;
  dynamic get district => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  dynamic get ownerAccount => throw _privateConstructorUsedError;
  List<Images> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllStadiumsSuccessCopyWith<AllStadiumsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllStadiumsSuccessCopyWith<$Res> {
  factory $AllStadiumsSuccessCopyWith(
          AllStadiumsSuccess value, $Res Function(AllStadiumsSuccess) then) =
      _$AllStadiumsSuccessCopyWithImpl<$Res, AllStadiumsSuccess>;
  @useResult
  $Res call(
      {String id,
      String ownerAccountId,
      String name,
      Price price,
      Location location,
      String districtId,
      String? workStartHour,
      String? workEndingHour,
      dynamic district,
      String details,
      dynamic ownerAccount,
      List<Images> images});

  $PriceCopyWith<$Res> get price;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$AllStadiumsSuccessCopyWithImpl<$Res, $Val extends AllStadiumsSuccess>
    implements $AllStadiumsSuccessCopyWith<$Res> {
  _$AllStadiumsSuccessCopyWithImpl(this._value, this._then);

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
    Object? workStartHour = freezed,
    Object? workEndingHour = freezed,
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
      workStartHour: freezed == workStartHour
          ? _value.workStartHour
          : workStartHour // ignore: cast_nullable_to_non_nullable
              as String?,
      workEndingHour: freezed == workEndingHour
          ? _value.workEndingHour
          : workEndingHour // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
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
}

/// @nodoc
abstract class _$$AllStadiumsSuccessImplCopyWith<$Res>
    implements $AllStadiumsSuccessCopyWith<$Res> {
  factory _$$AllStadiumsSuccessImplCopyWith(_$AllStadiumsSuccessImpl value,
          $Res Function(_$AllStadiumsSuccessImpl) then) =
      __$$AllStadiumsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerAccountId,
      String name,
      Price price,
      Location location,
      String districtId,
      String? workStartHour,
      String? workEndingHour,
      dynamic district,
      String details,
      dynamic ownerAccount,
      List<Images> images});

  @override
  $PriceCopyWith<$Res> get price;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$AllStadiumsSuccessImplCopyWithImpl<$Res>
    extends _$AllStadiumsSuccessCopyWithImpl<$Res, _$AllStadiumsSuccessImpl>
    implements _$$AllStadiumsSuccessImplCopyWith<$Res> {
  __$$AllStadiumsSuccessImplCopyWithImpl(_$AllStadiumsSuccessImpl _value,
      $Res Function(_$AllStadiumsSuccessImpl) _then)
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
    Object? workStartHour = freezed,
    Object? workEndingHour = freezed,
    Object? district = freezed,
    Object? details = null,
    Object? ownerAccount = freezed,
    Object? images = null,
  }) {
    return _then(_$AllStadiumsSuccessImpl(
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
      freezed == workStartHour
          ? _value.workStartHour
          : workStartHour // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == workEndingHour
          ? _value.workEndingHour
          : workEndingHour // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllStadiumsSuccessImpl implements _AllStadiumsSuccess {
  const _$AllStadiumsSuccessImpl(
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
      final List<Images> images)
      : _images = images;

  factory _$AllStadiumsSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllStadiumsSuccessImplFromJson(json);

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
  final String? workStartHour;
  @override
  final String? workEndingHour;
  @override
  final dynamic district;
  @override
  final String details;
  @override
  final dynamic ownerAccount;
  final List<Images> _images;
  @override
  List<Images> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AllStadiumsSuccess(id: $id, ownerAccountId: $ownerAccountId, name: $name, price: $price, location: $location, districtId: $districtId, workStartHour: $workStartHour, workEndingHour: $workEndingHour, district: $district, details: $details, ownerAccount: $ownerAccount, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllStadiumsSuccessImpl &&
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
            const DeepCollectionEquality()
                .equals(other.ownerAccount, ownerAccount) &&
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
      const DeepCollectionEquality().hash(ownerAccount),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllStadiumsSuccessImplCopyWith<_$AllStadiumsSuccessImpl> get copyWith =>
      __$$AllStadiumsSuccessImplCopyWithImpl<_$AllStadiumsSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllStadiumsSuccessImplToJson(
      this,
    );
  }
}

abstract class _AllStadiumsSuccess implements AllStadiumsSuccess {
  const factory _AllStadiumsSuccess(
      final String id,
      final String ownerAccountId,
      final String name,
      final Price price,
      final Location location,
      final String districtId,
      final String? workStartHour,
      final String? workEndingHour,
      final dynamic district,
      final String details,
      final dynamic ownerAccount,
      final List<Images> images) = _$AllStadiumsSuccessImpl;

  factory _AllStadiumsSuccess.fromJson(Map<String, dynamic> json) =
      _$AllStadiumsSuccessImpl.fromJson;

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
  String? get workStartHour;
  @override
  String? get workEndingHour;
  @override
  dynamic get district;
  @override
  String get details;
  @override
  dynamic get ownerAccount;
  @override
  List<Images> get images;
  @override
  @JsonKey(ignore: true)
  _$$AllStadiumsSuccessImplCopyWith<_$AllStadiumsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call({String id, String path, String name});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String path, String name});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
  }) {
    return _then(_$ImagesImpl(
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
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(this.id, this.path, this.name);

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String name;

  @override
  String toString() {
    return 'Images(id: $id, path: $path, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
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
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(final String id, final String path, final String name) =
      _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
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
