import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_stadiums_success.freezed.dart';
part 'saved_stadiums_success.g.dart';

@freezed
class SavedStadiumsSuccess with _$SavedStadiumsSuccess {
  const factory SavedStadiumsSuccess(
  String id,
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
  List<Image> images,
      ) = _SavedStadiumsSuccess;

  factory SavedStadiumsSuccess.fromJson(Map<String, dynamic> json) =>
      _$SavedStadiumsSuccessFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price(
  String currency,
  int amount,
      ) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location(
  double latitude,
  double longitude,
      ) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account(
  String id,
  String userId,
  int roleId,
  User? user,
  dynamic role,
      ) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class User with _$User {
  const factory User(
  String id,
  String name,
  String phoneNumber,
  dynamic gender,
  dynamic age,
  dynamic homeAddressId,
  dynamic address,
  List<Account> accounts,
  List<dynamic> images,
      ) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image(
  String id,
  String path,
  String name,
      ) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
