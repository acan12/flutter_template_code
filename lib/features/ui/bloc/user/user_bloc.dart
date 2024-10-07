import "package:bloc/bloc.dart";
import 'package:flutter_template_code/features/data/remote/response/user/user_response.dart';
import 'package:flutter_template_code/features/domain/usecases/get_user_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_event.dart";
part 'user_state.dart';
part "user_bloc.freezed.dart";

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase _getUserUseCase;

  UserBloc(this._getUserUseCase) : super(const _Initial()) {
    on<UserEvent>(_fetchUser);
  }

  _fetchUser(UserEvent event, Emitter<UserState> emit) async {
    emit(const _Loading());
    try {
      final result = await _getUserUseCase();
      emit(_Loaded(result));
    } catch (error) {
      emit(_Error(error.toString()));
    }
  }
}
