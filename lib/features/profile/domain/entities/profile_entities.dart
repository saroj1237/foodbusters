import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entities.freezed.dart';
part 'profile_entities.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? address,
    String? createdDate,
    String? email,
    String? fullName,
    String? image,
    String? id,
    String? phone,
    bool? verified,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

class UpdateProfileReq {
  final String fullName;
  final String email;
  final File? image;

  UpdateProfileReq({required this.fullName, required this.email, this.image});
}

class ChangePasswordReq {
  final String oldPassword;
  final String newPassword;

  ChangePasswordReq({required this.oldPassword, required this.newPassword});
}
