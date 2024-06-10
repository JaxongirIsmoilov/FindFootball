import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/features/main/profile/domain/usecase/request_to_host_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';


part 'profile_event.dart';
part 'profile_state.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<RequestToHostEvent>((event, emit) async {
      await requestToHost(event, emit);
    });

  }
  final requestToHostUseCase = di<RequestToHostUseCase>();

  Future<void> requestToHost(
      RequestToHostEvent event, Emitter<ProfileState> emit) async {
    await requestToHostUseCase.execute().then(
          (value) => value.fold(
            (l) {
          emit(ExceptionState(message: l.message),);
        },
            (r) {
          emit(ProfileHostRequest( id: r),);
        },
      ),
    );
  }
}
