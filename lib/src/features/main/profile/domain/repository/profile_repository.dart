
import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/profile/data/models/response/profile_success.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/http/failure.dart';

abstract class ProfileRepository{
  Future<Either<Failure, ProfileSuccess>> getProfile();
  Future<Either<Failure, String>> requestToHost();
}

