import 'package:freezed_annotation/freezed_annotation.dart';

part  'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded() = _Loaded;
  const factory UserState.error() = _Error;
}

// final class UserInitial extends UserState {
//   @override
//   List<Object?> get props => [];
// }
//
// final class UserLoading extends UserState {
//   @override
//   List<Object?> get props => [];
// }
//
// final class UserLoaded extends UserState {
//   final UserResponse user;
//
//   UserLoaded(this.user);
//
//   @override
//   List<Object?> get props => [];
// }
//
// final class UserError extends UserState {
//   final String error;
//   UserError(this.error);
//
//   @override
//   List<Object?> get props => [];
// }
