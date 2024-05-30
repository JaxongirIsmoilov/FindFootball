// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_stadium_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookStadiumRequest _$BookStadiumRequestFromJson(Map<String, dynamic> json) {
  return _BookStadiumRequest.fromJson(json);
}

/// @nodoc
mixin _$BookStadiumRequest {
  String get accountId => throw _privateConstructorUsedError;
  String get stadiumId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookStadiumRequestCopyWith<BookStadiumRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStadiumRequestCopyWith<$Res> {
  factory $BookStadiumRequestCopyWith(
          BookStadiumRequest value, $Res Function(BookStadiumRequest) then) =
      _$BookStadiumRequestCopyWithImpl<$Res, BookStadiumRequest>;
  @useResult
  $Res call(
      {String accountId,
      String stadiumId,
      String date,
      String startTime,
      String endTime});
}

/// @nodoc
class _$BookStadiumRequestCopyWithImpl<$Res, $Val extends BookStadiumRequest>
    implements $BookStadiumRequestCopyWith<$Res> {
  _$BookStadiumRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? stadiumId = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookStadiumRequestImplCopyWith<$Res>
    implements $BookStadiumRequestCopyWith<$Res> {
  factory _$$BookStadiumRequestImplCopyWith(_$BookStadiumRequestImpl value,
          $Res Function(_$BookStadiumRequestImpl) then) =
      __$$BookStadiumRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountId,
      String stadiumId,
      String date,
      String startTime,
      String endTime});
}

/// @nodoc
class __$$BookStadiumRequestImplCopyWithImpl<$Res>
    extends _$BookStadiumRequestCopyWithImpl<$Res, _$BookStadiumRequestImpl>
    implements _$$BookStadiumRequestImplCopyWith<$Res> {
  __$$BookStadiumRequestImplCopyWithImpl(_$BookStadiumRequestImpl _value,
      $Res Function(_$BookStadiumRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? stadiumId = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$BookStadiumRequestImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookStadiumRequestImpl implements _BookStadiumRequest {
  const _$BookStadiumRequestImpl(
      this.accountId, this.stadiumId, this.date, this.startTime, this.endTime);

  factory _$BookStadiumRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookStadiumRequestImplFromJson(json);

  @override
  final String accountId;
  @override
  final String stadiumId;
  @override
  final String date;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'BookStadiumRequest(accountId: $accountId, stadiumId: $stadiumId, date: $date, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookStadiumRequestImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, stadiumId, date, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookStadiumRequestImplCopyWith<_$BookStadiumRequestImpl> get copyWith =>
      __$$BookStadiumRequestImplCopyWithImpl<_$BookStadiumRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookStadiumRequestImplToJson(
      this,
    );
  }
}

abstract class _BookStadiumRequest implements BookStadiumRequest {
  const factory _BookStadiumRequest(
      final String accountId,
      final String stadiumId,
      final String date,
      final String startTime,
      final String endTime) = _$BookStadiumRequestImpl;

  factory _BookStadiumRequest.fromJson(Map<String, dynamic> json) =
      _$BookStadiumRequestImpl.fromJson;

  @override
  String get accountId;
  @override
  String get stadiumId;
  @override
  String get date;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$BookStadiumRequestImplCopyWith<_$BookStadiumRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
