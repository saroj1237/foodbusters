import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:foodbusters/core/services/firebase/firebase_service.dart';
import 'package:foodbusters/injection_container.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<DeviceInfo> getDeviceInfo() async {
  String name = 'Unknown';
  String identifier = 'Unknown';
  String appVersion = "Unknown";
  String deviceType = "Unknown";
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  final firebaseService = sl.get<FirebaseService>();
  final String fcmToken = await firebaseService.getFCMToken();
  final packageInfo = await PackageInfo.fromPlatform();
  try {
    if (Platform.isAndroid) {
      // return android info
      var build = await deviceInfo.androidInfo;
      name = "${build.brand} ${build.model}";
      identifier = "${build.id}";
      appVersion = packageInfo.version;
      deviceType = 'Android';
    } else if (Platform.isIOS) {
      // return ios info
      var build = await deviceInfo.iosInfo;
      name = "${build.name} ${build.model}";
      identifier = "${build.identifierForVendor}";
      appVersion = packageInfo.version;
      deviceType = "Ios";
    }
  } on PlatformException {
    // return default info
    return DeviceInfo(name, identifier, appVersion, deviceType, fcmToken);
  } on UnimplementedError {
    // return default info
    return DeviceInfo(name, identifier, appVersion, deviceType, fcmToken);
  } catch (e) {
    debugPrint(e.toString());
  }
  return DeviceInfo(name, identifier, appVersion, deviceType, fcmToken);
}

class DeviceInfo {
  final String name;
  final String identifier;
  final String appVersion;
  final String deviceType; // android , ios or other
  final String fcmToken;
  DeviceInfo(this.name, this.identifier, this.appVersion, this.deviceType,
      this.fcmToken);
}
