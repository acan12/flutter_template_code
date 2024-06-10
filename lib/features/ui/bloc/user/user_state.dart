part of 'user_bloc.dart';

@immutable
sealed class UserState extends Equatable {}

final class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

final class UserLoading extends UserState {
  @override
  List<Object?> get props => [];
}

final class UserLoaded extends UserState {
  final UserResponse user;

  UserLoaded(this.user);

  @override
  List<Object?> get props => [];
}

final class UserError extends UserState {
  final String error;
  UserError(this.error);

  @override
  List<Object?> get props => [];
}
