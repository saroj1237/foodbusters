import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String prefsKeyLang = 'PREFS_KEY_LANG';
const String prefsKeyOnboardingScreen = 'PREFS_KEY_ONBOARDING_SCREEN';
const String prefsKeyIsUserLogedIn = 'PREFS_KEY_IS_USER_LOGGED_IN';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage _secureStorage;
  AppPreferences(
      {required SharedPreferences sharedPreferences,
      required FlutterSecureStorage secureStorage})
      : _sharedPreferences = sharedPreferences,
        _secureStorage = secureStorage;

  // ========================= APP LANGUAGE ========================
  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(prefsKeyLang);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.english.getValue();
    }
  }

  //==================== FOR ONBARDING VIEW =======================
  Future<void> setOnboardingScreenViewed() async {
    await _sharedPreferences.setBool(prefsKeyOnboardingScreen, true);
  }

  Future<bool> isOnboardingScreenViewed() async {
    return _sharedPreferences.getBool(prefsKeyOnboardingScreen) ?? false;
  }

  //===================== FOR USER AUTH STATUS ========================
  Future<void> setUserLoggedIn(String token) async {
    // await _sharedPreferences.setString(PREFS_KEY_IS_USER_LOGGED_IN, token);
    await _secureStorage.write(key: prefsKeyIsUserLogedIn, value: token);
  }

  Future<void> setUserLoggedOut() async {
    await _secureStorage.delete(key: prefsKeyIsUserLogedIn);
  }

  Future<String?> isUserLoggedIn() async {
    return await _secureStorage.read(key: prefsKeyIsUserLogedIn);
  }
}
