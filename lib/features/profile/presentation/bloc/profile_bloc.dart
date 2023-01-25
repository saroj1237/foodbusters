import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/domain/usecases/profile_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase profileUseCase;
  final UpdateProfileUsecase updateProfileUsecase;
  final ChangePasswordUsecase changePasswordUsecase;
  ProfileBloc({
    required this.profileUseCase,
    required this.updateProfileUsecase,
    required this.changePasswordUsecase,
  }) : super(const ProfileState.initial()) {
    on<GetProfileInfo>(_onGetProfileInfo);
    on<UpdateProfile>(_onUpdateProfile);
    on<ChangePassword>(_onChangePassword);
  }

  void _onGetProfileInfo(
      GetProfileInfo event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());

    final failureOrUserModel = await profileUseCase(NoParams());
    failureOrUserModel.fold(
      (failure) {
        if (failure is NetworkFailure) {
          emit(GetProfileInfoFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      },
      (userModel) {
        emit(GetProfileInfoSuccess(userModel: userModel));
      },
    );
  }

  void _onUpdateProfile(UpdateProfile event, Emitter<ProfileState> emit) async {
    emit(const UpdateProfileloading());
    await Future.delayed(const Duration(seconds: 1));
    // check weather file should be compressed or not
    if (event.updateProfileReq.image != null) {
      final bytes =
          event.updateProfileReq.image!.readAsBytesSync().lengthInBytes;
      final kb = bytes / 1024;
      if (kb > 1024) {
        // file is too large, needs to be compressed
        emit(const UpdateProfileFailure("Selected file is too large"));
      } else {
        final failureOrSuccess =
            await updateProfileUsecase(event.updateProfileReq);
        await failureOrSuccess.fold((failure) async {
          if (failure is NetworkFailure) {
            emit(UpdateProfileFailure(
                NetworkExceptions.getErrorMessage(failure.error)));
          }
        }, (user) async {
          emit(UpdateProfileSuccess(user));
        });
      }
    } else {
      final failureOrSuccess =
          await updateProfileUsecase(event.updateProfileReq);
      await failureOrSuccess.fold((failure) async {
        if (failure is NetworkFailure) {
          emit(UpdateProfileFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (user) async {
        emit(UpdateProfileSuccess(user));
      });
    }
  }

  _onChangePassword(ChangePassword event, Emitter<ProfileState> emit) async {
    emit(const UpdateProfileloading());
    final failureOrSuccess =
        await changePasswordUsecase(event.changePasswordReq);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(ChangePasswordFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (success) {
      emit(const ChangePasswordSuccess());
    });
  }
}
