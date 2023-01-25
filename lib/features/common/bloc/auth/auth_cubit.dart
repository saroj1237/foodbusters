import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/app/app_prefes.dart';
import 'package:foodbusters/core/app/device_info.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AppPreferences appPreferences;
  final DioClient dioClient;
  AuthCubit({required this.appPreferences, required this.dioClient})
      : super(const AuthState.initial());
  Future<void> checkAuthState() async {
    try {
      final authToken = await appPreferences.isUserLoggedIn();
      if (authToken != null) {
        emit(const Authenticated());
      } else {
        emit(const UnAuthenticated());
      }
    } catch (e) {
      emit(const UnAuthenticated());
    }
  }

  Future<void> logout() async {
    try {
      final deviceInfo = await getDeviceInfo();
      final url =
          ApiUrl.logout.replaceAll("{deviceToken}", deviceInfo.fcmToken);
      final response = await dioClient.get(url);
      print(response);
      await appPreferences.setUserLoggedOut();
      emit(const UnAuthenticated());
      showToast("Loggedout successfully");
    } catch (e) {
      debugPrint(e.toString());
      // showToast("Couldn't logout. Try again.");
    }
  }
}
