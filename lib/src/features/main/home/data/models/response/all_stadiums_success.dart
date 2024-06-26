import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_stadiums_success.freezed.dart';
part 'all_stadiums_success.g.dart';

@freezed
class AllStadiumsSuccess with _$AllStadiumsSuccess {
  const factory AllStadiumsSuccess(
  String id,
  String ownerAccountId,
  String name,
  Price price,
  Location location,
  String districtId,
  String? workStartHour,
  String? workEndingHour,
  dynamic district,
  String details,
  Account ownerAccount,
  List<Images> images,
  ) = _AllStadiumsSuccess;

  factory AllStadiumsSuccess.fromJson(Map<String, dynamic> json) =>
      _$AllStadiumsSuccessFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images(
    String id,
    String path,
    String name,
  ) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
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
      ) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
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
class Price with _$Price {
  const factory Price(
    String currency,
    int amount,
  ) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}
