import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/home/domain/repository/fetch_all_stadiums_repository.dart';

import '../../../../../core/http/failure.dart';
import '../../data/models/response/all_stadiums_success.dart';

abstract class FetchAllStadiumsCase{
  Future<Either<Failure, List<AllStadiumsSuccess>>> execute();
}

class FetchAllStadiumsUseCase  extends FetchAllStadiumsCase{
  final FetchAllStadiumsRepository _fetchAllStadiumsRepository;

  FetchAllStadiumsUseCase(this._fetchAllStadiumsRepository);

  @override
  Future<Either<Failure, List<AllStadiumsSuccess>>> execute() async {
    return await _fetchAllStadiumsRepository.fetchAllStadiums();
  }


}