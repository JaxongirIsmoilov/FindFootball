import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/profile/domain/repository/profile_repository.dart';

import '../../../../../core/http/failure.dart';

abstract class RequestToHostCase {
  Future<Either<Failure, String>> execute();
}

class RequestToHostUseCase extends RequestToHostCase{

  final ProfileRepository profileRepository;
  RequestToHostUseCase(this.profileRepository);

  @override
  Future<Either<Failure, String>> execute() async {
    return await profileRepository.requestToHost();
  }

}