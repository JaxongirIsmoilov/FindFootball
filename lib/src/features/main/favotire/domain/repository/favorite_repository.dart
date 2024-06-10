import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';

import '../../../home/data/models/response/all_stadiums_success.dart';

abstract class FavoriteRepository{
  Future<Either<Failure, List<SavedStadiumsSuccess>>> getAllFavoriteStadiums();
}