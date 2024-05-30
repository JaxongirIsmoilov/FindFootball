// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_stadium_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookStadiumSuccess _$BookStadiumSuccessFromJson(Map<String, dynamic> json) {
  return _BookStadiumSuccess.fromJson(json);
}

/// @nodoc
mixin _$BookStadiumSuccess {
  String get id => throw _privateConstructorUsedError;
  String get stadiumId => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  BookedTime get bookedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookStadiumSuccessCopyWith<BookStadiumSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStadiumSuccessCopyWith<$Res> {
  factory $BookStadiumSuccessCopyWith(
          BookStadiumSuccess value, $Res Function(BookStadiumSuccess) then) =
      _$BookStadiumSuccessCopyWithImpl<$Res, BookStadiumSuccess>;
  @useResult
  $Res call(
      {String id,
      String stadiumId,
      String accountId,
      DateTime date,
      BookedTime bookedTime});

  $BookedTimeCopyWith<$Res> get bookedTime;
}

/// @nodoc
class _$BookStadiumSuccessCopyWithImpl<$Res, $Val extends BookStadiumSuccess>
    implements $BookStadiumSuccessCopyWith<$Res> {
  _$BookStadiumSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stadiumId = null,
    Object? accountId = null,
    Object? date = null,
    Object? bookedTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookedTime: null == bookedTime
          ? _value.bookedTime
          : bookedTime // ignore: cast_nullable_to_non_nullable
              as BookedTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookedTimeCopyWith<$Res> get bookedTime {
    return $BookedTimeCopyWith<$Res>(_value.bookedTime, (value) {
      return _then(_value.copyWith(bookedTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookStadiumSuccessImplCopyWith<$Res>
    implements $BookStadiumSuccessCopyWith<$Res> {
  factory _$$BookStadiumSuccessImplCopyWith(_$BookStadiumSuccessImpl value,
          $Res Function(_$BookStadiumSuccessImpl) then) =
      __$$BookStadiumSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String stadiumId,
      String accountId,
      DateTime date,
      BookedTime bookedTime});

  @override
  $BookedTimeCopyWith<$Res> get bookedTime;
}

/// @nodoc
class __$$BookStadiumSuccessImplCopyWithImpl<$Res>
    extends _$BookStadiumSuccessCopyWithImpl<$Res, _$BookStadiumSuccessImpl>
    implements _$$BookStadiumSuccessImplCopyWith<$Res> {
  __$$BookStadiumSuccessImplCopyWithImpl(_$BookStadiumSuccessImpl _value,
      $Res Function(_$BookStadiumSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stadiumId = null,
    Object? accountId = null,
    Object? date = null,
    Object? bookedTime = null,
  }) {
    return _then(_$BookStadiumSuccessImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as String,
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == bookedTime
          ? _value.bookedTime
          : bookedTime // ignore: cast_nullable_to_non_nullable
              as BookedTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookStadiumSuccessImpl implements _BookStadiumSuccess {
  const _$BookStadiumSuccessImpl(
      this.id, this.stadiumId, this.accountId, this.date, this.bookedTime);

  factory _$BookStadiumSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookStadiumSuccessImplFromJson(json);

  @override
  final String id;
  @override
  final String stadiumId;
  @override
  final String accountId;
  @override
  final DateTime date;
  @override
  final BookedTime bookedTime;

  @override
  String toString() {
    return 'BookStadiumSuccess(id: $id, stadiumId: $stadiumId, accountId: $accountId, date: $date, bookedTime: $bookedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookStadiumSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.bookedTime, bookedTime) ||
                other.bookedTime == bookedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, stadiumId, accountId, date, bookedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookStadiumSuccessImplCopyWith<_$BookStadiumSuccessImpl> get copyWith =>
      __$$BookStadiumSuccessImplCopyWithImpl<_$BookStadiumSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookStadiumSuccessImplToJson(
      this,
    );
  }
}

abstract class _BookStadiumSuccess implements BookStadiumSuccess {
  const factory _BookStadiumSuccess(
      final String id,
      final String stadiumId,
      final String accountId,
      final DateTime date,
      final BookedTime bookedTime) = _$BookStadiumSuccessImpl;

  factory _BookStadiumSuccess.fromJson(Map<String, dynamic> json) =
      _$BookStadiumSuccessImpl.fromJson;

  @override
  String get id;
  @override
  String get stadiumId;
  @override
  String get accountId;
  @override
  DateTime get date;
  @override
  BookedTime get bookedTime;
  @override
  @JsonKey(ignore: true)
  _$$BookStadiumSuccessImplCopyWith<_$BookStadiumSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookedTime _$BookedTimeFromJson(Map<String, dynamic> json) {
  return _BookedTime.fromJson(json);
}

/// @nodoc
mixin _$BookedTime {
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedTimeCopyWith<BookedTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedTimeCopyWith<$Res> {
  factory $BookedTimeCopyWith(
          BookedTime value, $Res Function(BookedTime) then) =
      _$BookedTimeCopyWithImpl<$Res, BookedTime>;
  @useResult
  $Res call({String startTime, String endTime});
}

/// @nodoc
class _$BookedTimeCopyWithImpl<$Res, $Val extends BookedTime>
    implements $BookedTimeCopyWith<$Res> {
  _$BookedTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$BookedTimeImplCopyWith<$Res>
    implements $BookedTimeCopyWith<$Res> {
  factory _$$BookedTimeImplCopyWith(
          _$BookedTimeImpl value, $Res Function(_$BookedTimeImpl) then) =
      __$$BookedTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startTime, String endTime});
}

/// @nodoc
class __$$BookedTimeImplCopyWithImpl<$Res>
    extends _$BookedTimeCopyWithImpl<$Res, _$BookedTimeImpl>
    implements _$$BookedTimeImplCopyWith<$Res> {
  __$$BookedTimeImplCopyWithImpl(
      _$BookedTimeImpl _value, $Res Function(_$BookedTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$BookedTimeImpl(
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
class _$BookedTimeImpl implements _BookedTime {
  const _$BookedTimeImpl(this.startTime, this.endTime);

  factory _$BookedTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookedTimeImplFromJson(json);

  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'BookedTime(startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedTimeImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedTimeImplCopyWith<_$BookedTimeImpl> get copyWith =>
      __$$BookedTimeImplCopyWithImpl<_$BookedTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookedTimeImplToJson(
      this,
    );
  }
}

abstract class _BookedTime implements BookedTime {
  const factory _BookedTime(final String startTime, final String endTime) =
      _$BookedTimeImpl;

  factory _BookedTime.fromJson(Map<String, dynamic> json) =
      _$BookedTimeImpl.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$BookedTimeImplCopyWith<_$BookedTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
