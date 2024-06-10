import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/favotire/domain/repository/favorite_repository.dart';

import '../../../../../core/http/failure.dart';
import '../../../home/data/models/response/all_stadiums_success.dart';
import '../../data/models/response/saved_stadiums_success.dart';

abstract class GetAllFavoriteCase{
  Future<Either<Failure, List<SavedStadiumsSuccess>>> execute();
}

class GetAllFavoriteUseCase extends GetAllFavoriteCase{

  final FavoriteRepository favoriteRepository;
  GetAllFavoriteUseCase(this.favoriteRepository);

  @override
  Future<Either<Failure, List<SavedStadiumsSuccess>>> execute() async {
    return await favoriteRepository.getAllFavoriteStadiums();
  }

}