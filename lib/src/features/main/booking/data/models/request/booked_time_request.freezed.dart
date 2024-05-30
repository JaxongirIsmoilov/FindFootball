// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_time_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookedTimeRequest _$BookedTimeRequestFromJson(Map<String, dynamic> json) {
  return _BookedTimeRequest.fromJson(json);
}

/// @nodoc
mixin _$BookedTimeRequest {
  String get year => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  int get dayOfWeek => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedTimeRequestCopyWith<BookedTimeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedTimeRequestCopyWith<$Res> {
  factory $BookedTimeRequestCopyWith(
          BookedTimeRequest value, $Res Function(BookedTimeRequest) then) =
      _$BookedTimeRequestCopyWithImpl<$Res, BookedTimeRequest>;
  @useResult
  $Res call({String year, String month, String day, int dayOfWeek});
}

/// @nodoc
class _$BookedTimeRequestCopyWithImpl<$Res, $Val extends BookedTimeRequest>
    implements $BookedTimeRequestCopyWith<$Res> {
  _$BookedTimeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? dayOfWeek = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookedTimeRequestImplCopyWith<$Res>
    implements $BookedTimeRequestCopyWith<$Res> {
  factory _$$BookedTimeRequestImplCopyWith(_$BookedTimeRequestImpl value,
          $Res Function(_$BookedTimeRequestImpl) then) =
      __$$BookedTimeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String year, String month, String day, int dayOfWeek});
}

/// @nodoc
class __$$BookedTimeRequestImplCopyWithImpl<$Res>
    extends _$BookedTimeRequestCopyWithImpl<$Res, _$BookedTimeRequestImpl>
    implements _$$BookedTimeRequestImplCopyWith<$Res> {
  __$$BookedTimeRequestImplCopyWithImpl(_$BookedTimeRequestImpl _value,
      $Res Function(_$BookedTimeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? dayOfWeek = null,
  }) {
    return _then(_$BookedTimeRequestImpl(
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookedTimeRequestImpl implements _BookedTimeRequest {
  const _$BookedTimeRequestImpl(
      this.year, this.month, this.day, this.dayOfWeek);

  factory _$BookedTimeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookedTimeRequestImplFromJson(json);

  @override
  final String year;
  @override
  final String month;
  @override
  final String day;
  @override
  final int dayOfWeek;

  @override
  String toString() {
    return 'BookedTimeRequest(year: $year, month: $month, day: $day, dayOfWeek: $dayOfWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedTimeRequestImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day, dayOfWeek);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedTimeRequestImplCopyWith<_$BookedTimeRequestImpl> get copyWith =>
      __$$BookedTimeRequestImplCopyWithImpl<_$BookedTimeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookedTimeRequestImplToJson(
      this,
    );
  }
}

abstract class _BookedTimeRequest implements BookedTimeRequest {
  const factory _BookedTimeRequest(final String year, final String month,
      final String day, final int dayOfWeek) = _$BookedTimeRequestImpl;

  factory _BookedTimeRequest.fromJson(Map<String, dynamic> json) =
      _$BookedTimeRequestImpl.fromJson;

  @override
  String get year;
  @override
  String get month;
  @override
  String get day;
  @override
  int get dayOfWeek;
  @override
  @JsonKey(ignore: true)
  _$$BookedTimeRequestImplCopyWith<_$BookedTimeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
