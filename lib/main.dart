import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodbusters/core/app/app.dart';
import 'package:foodbusters/core/app/device_info.dart';
import 'package:foodbusters/core/services/firebase/local_notification_service.dart';
import 'package:foodbusters/injection_container.dart';
import 'package:khalti/khalti.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  await getDeviceInfo();
  final notificationService = sl.get<LocalNotificationService>();
  await notificationService.initialize();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await Khalti.init(
    publicKey: 'test_public_key_857e70e4ac90448ea12d67b3ead6401f',
    enabledDebugging: false,
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}
