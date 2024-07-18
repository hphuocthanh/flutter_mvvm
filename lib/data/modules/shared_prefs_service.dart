import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static const _appThemeModePref = 'appThemeMode';
  static const _appColorPref = 'appColor';

  late final SharedPreferences _sharedPref;

  Future<void> configure() async {
    _sharedPref = await SharedPreferences.getInstance();
  }
}
