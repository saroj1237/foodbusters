part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfileInfo() = GetProfileInfo;
  const factory ProfileEvent.updateProfie({
    required UpdateProfileReq updateProfileReq,
  }) = UpdateProfile;
  const factory ProfileEvent.changePassword(
      {required ChangePasswordReq changePasswordReq}) = ChangePassword;
}
