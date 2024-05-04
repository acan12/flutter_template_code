import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template_code/features/domain/repo/user_repository.dart';
import 'package:meta/meta.dart';

import '../../../data/remote/response/user/user_response.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepo;

  UserBloc({required this.userRepo}) : super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      emit(UserLoading());
      try {
        final result = await userRepo.getUser();
        emit(UserLoaded(result));
      } catch(error) {
        emit(UserError(error.toString()));
      }

    });
  }
}
