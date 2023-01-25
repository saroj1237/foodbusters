import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {
  Future<String> getFCMToken() async {
    String token = "UNKNOWN";
    String? result = await FirebaseMessaging.instance.getToken();
    if (result != null) {
      token = result;
    }
    return token;
  }
}
