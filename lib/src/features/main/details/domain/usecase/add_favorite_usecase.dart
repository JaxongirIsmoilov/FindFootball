import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/details/domain/repository/details_repository.dart';

import '../../../../../core/http/failure.dart';

abstract class AddFavoriteCase{
  Future<Either<Failure, dynamic>> execute({required String stadiumId});
}

class AddFavoriteUseCase extends AddFavoriteCase{

  final DetailsRepository detailsRepository;

  AddFavoriteUseCase(this.detailsRepository);

  @override
  Future<Either<Failure, dynamic>> execute({required String stadiumId}) async {
    return await detailsRepository.addToFavorite(stadiumId: stadiumId);
  }

}