part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  // get profile states
  const factory ProfileState.profileLoading() = ProfileLoading;
  const factory ProfileState.getProfileInfoSuccess(
      {required UserModel userModel}) = GetProfileInfoSuccess;
  const factory ProfileState.getProfileInfoFailure(String error) =
      GetProfileInfoFailure;
  // update profile states
  const factory ProfileState.updateProfileLoading() = UpdateProfileloading;
  const factory ProfileState.updateProfileFailure(String error) =
      UpdateProfileFailure;
  const factory ProfileState.updateProfileSuccess(UserModel user) =
      UpdateProfileSuccess;
  // changePassword states
  const factory ProfileState.changePasswordFailure(String error) =
      ChangePasswordFailure;
  const factory ProfileState.changePasswordSuccess() = ChangePasswordSuccess;
}
