import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_success.freezed.dart';
part 'profile_success.g.dart';

@freezed
class ProfileSuccess with _$ProfileSuccess {
  const factory ProfileSuccess(
  String id,
  String name,
  String phoneNumber,
  dynamic gender,
  dynamic age,
  dynamic homeAddressId,
  dynamic address,
  List<Account>? accounts,
  List<dynamic> images,
      ) = _ProfileSuccess;

  factory ProfileSuccess.fromJson(Map<String, dynamic> json) =>
      _$ProfileSuccessFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account(
      String id,
      String userId,
      int roleId,
      ProfileSuccess user,
      Role role,
      ) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role(
  int id,
  String type,
      ) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}