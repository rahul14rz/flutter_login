import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences _prefs;
  static initialize() async {
    if (_prefs != null) {
      return _prefs;
    } else {
      _prefs = await SharedPreferences.getInstance();
    }
  }

  static Future<void> saveMail(String mail) async {
    return _prefs.setString('mail', mail);
  }

  static Future<void> savePassword(String password) async {
    return _prefs.setString("password", password);
  }

  static Future<void> sharedClear() async {
    return _prefs.clear();
  }

  static Future<void> login() async {
    return _prefs.setBool('login', true);
  }

  static String get getMail => _prefs.getString("mail") ?? "null";
  static String get getPassword => _prefs.getString("password") ?? "null";
  static bool get getLogin => _prefs.getBool('login') ?? false;
}
