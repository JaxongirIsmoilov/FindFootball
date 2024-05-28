import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/profile/domain/repository/profile_repository.dart';

import '../../../../../core/http/failure.dart';
import '../../data/models/response/profile_success.dart';

abstract class ProfileCase{
  Future<Either<Failure, ProfileSuccess>> execute();
}

class ProfileUseCase extends ProfileCase{

  final ProfileRepository profileRepository;
  ProfileUseCase(this.profileRepository);

  @override
  Future<Either<Failure, ProfileSuccess>> execute() async {
    return await profileRepository.getProfile();
  }




}