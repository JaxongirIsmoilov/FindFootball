import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/remote/response/register_response.dart';

abstract class RegisterRepository{
  Future<Either<Failure, RegisterResponse>> register({required BuildContext buildContext, required String fullName, required String login, required String phoneNumber, required String password});
}