// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_times_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookedTimeSuccess _$BookedTimeSuccessFromJson(Map<String, dynamic> json) {
  return _BookedTimeSuccess.fromJson(json);
}

/// @nodoc
mixin _$BookedTimeSuccess {
  DateTime get date => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedTimeSuccessCopyWith<BookedTimeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedTimeSuccessCopyWith<$Res> {
  factory $BookedTimeSuccessCopyWith(
          BookedTimeSuccess value, $Res Function(BookedTimeSuccess) then) =
      _$BookedTimeSuccessCopyWithImpl<$Res, BookedTimeSuccess>;
  @useResult
  $Res call({DateTime date, String startTime, String endTime});
}

/// @nodoc
class _$BookedTimeSuccessCopyWithImpl<$Res, $Val extends BookedTimeSuccess>
    implements $BookedTimeSuccessCopyWith<$Res> {
  _$BookedTimeSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$BookedTimeSuccessImplCopyWith<$Res>
    implements $BookedTimeSuccessCopyWith<$Res> {
  factory _$$BookedTimeSuccessImplCopyWith(_$BookedTimeSuccessImpl value,
          $Res Function(_$BookedTimeSuccessImpl) then) =
      __$$BookedTimeSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String startTime, String endTime});
}

/// @nodoc
class __$$BookedTimeSuccessImplCopyWithImpl<$Res>
    extends _$BookedTimeSuccessCopyWithImpl<$Res, _$BookedTimeSuccessImpl>
    implements _$$BookedTimeSuccessImplCopyWith<$Res> {
  __$$BookedTimeSuccessImplCopyWithImpl(_$BookedTimeSuccessImpl _value,
      $Res Function(_$BookedTimeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$BookedTimeSuccessImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$BookedTimeSuccessImpl implements _BookedTimeSuccess {
  const _$BookedTimeSuccessImpl(this.date, this.startTime, this.endTime);

  factory _$BookedTimeSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookedTimeSuccessImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'BookedTimeSuccess(date: $date, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedTimeSuccessImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedTimeSuccessImplCopyWith<_$BookedTimeSuccessImpl> get copyWith =>
      __$$BookedTimeSuccessImplCopyWithImpl<_$BookedTimeSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookedTimeSuccessImplToJson(
      this,
    );
  }
}

abstract class _BookedTimeSuccess implements BookedTimeSuccess {
  const factory _BookedTimeSuccess(
          final DateTime date, final String startTime, final String endTime) =
      _$BookedTimeSuccessImpl;

  factory _BookedTimeSuccess.fromJson(Map<String, dynamic> json) =
      _$BookedTimeSuccessImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$BookedTimeSuccessImplCopyWith<_$BookedTimeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
