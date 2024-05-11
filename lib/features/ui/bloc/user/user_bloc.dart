import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template_code/features/domain/repo/user_repository_impl.dart';
import 'package:flutter_template_code/features/domain/usecases/get_user_usecase.dart';
import 'package:meta/meta.dart';

import '../../../data/remote/response/user/user_response.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase _getUserUseCase;

  UserBloc(this._getUserUseCase) : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());
      try {
        final result = await _getUserUseCase() ;
        emit(UserLoaded(result));
      } catch(error) {
        emit(UserError(error.toString()));
      }

    });
  }
}
