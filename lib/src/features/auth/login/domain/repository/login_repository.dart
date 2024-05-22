import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/auth/login/data/models/remote/response/login_success_response.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginRepository{
  Future<Either<Failure, LoginSuccessResponse>> login({required BuildContext context, required String login, required String password});
}