import 'package:dartz/dartz.dart';

import '../../../../../core/http/failure.dart';
import '../repository/details_repository.dart';

abstract class RemoveFromFavoriteCase{
  Future<Either<Failure, dynamic>> execute({required String stadiumId});
}

class RemoveFromFavoriteUseCase extends RemoveFromFavoriteCase{

  final DetailsRepository detailsRepository;

  RemoveFromFavoriteUseCase(this.detailsRepository);

  @override
  Future<Either<Failure, dynamic>> execute({required String stadiumId}) async {
    return await detailsRepository.removeFromFavorite(stadiumId: stadiumId);
  }

}