// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistrictSuccess _$DistrictSuccessFromJson(Map<String, dynamic> json) {
  return _DistrictSuccess.fromJson(json);
}

/// @nodoc
mixin _$DistrictSuccess {
  String get id => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictSuccessCopyWith<DistrictSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictSuccessCopyWith<$Res> {
  factory $DistrictSuccessCopyWith(
          DistrictSuccess value, $Res Function(DistrictSuccess) then) =
      _$DistrictSuccessCopyWithImpl<$Res, DistrictSuccess>;
  @useResult
  $Res call({String id, String cityId, String name, dynamic city});
}

/// @nodoc
class _$DistrictSuccessCopyWithImpl<$Res, $Val extends DistrictSuccess>
    implements $DistrictSuccessCopyWith<$Res> {
  _$DistrictSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cityId = null,
    Object? name = null,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictSuccessImplCopyWith<$Res>
    implements $DistrictSuccessCopyWith<$Res> {
  factory _$$DistrictSuccessImplCopyWith(_$DistrictSuccessImpl value,
          $Res Function(_$DistrictSuccessImpl) then) =
      __$$DistrictSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String cityId, String name, dynamic city});
}

/// @nodoc
class __$$DistrictSuccessImplCopyWithImpl<$Res>
    extends _$DistrictSuccessCopyWithImpl<$Res, _$DistrictSuccessImpl>
    implements _$$DistrictSuccessImplCopyWith<$Res> {
  __$$DistrictSuccessImplCopyWithImpl(
      _$DistrictSuccessImpl _value, $Res Function(_$DistrictSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cityId = null,
    Object? name = null,
    Object? city = freezed,
  }) {
    return _then(_$DistrictSuccessImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictSuccessImpl implements _DistrictSuccess {
  const _$DistrictSuccessImpl(this.id, this.cityId, this.name, this.city);

  factory _$DistrictSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictSuccessImplFromJson(json);

  @override
  final String id;
  @override
  final String cityId;
  @override
  final String name;
  @override
  final dynamic city;

  @override
  String toString() {
    return 'DistrictSuccess(id: $id, cityId: $cityId, name: $name, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cityId, name, const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictSuccessImplCopyWith<_$DistrictSuccessImpl> get copyWith =>
      __$$DistrictSuccessImplCopyWithImpl<_$DistrictSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictSuccessImplToJson(
      this,
    );
  }
}

abstract class _DistrictSuccess implements DistrictSuccess {
  const factory _DistrictSuccess(final String id, final String cityId,
      final String name, final dynamic city) = _$DistrictSuccessImpl;

  factory _DistrictSuccess.fromJson(Map<String, dynamic> json) =
      _$DistrictSuccessImpl.fromJson;

  @override
  String get id;
  @override
  String get cityId;
  @override
  String get name;
  @override
  dynamic get city;
  @override
  @JsonKey(ignore: true)
  _$$DistrictSuccessImplCopyWith<_$DistrictSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
