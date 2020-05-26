import 'package:shared_preferences/shared_preferences.dart';

Future<bool> addPreferences(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

Future<String> getPreference(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String value = prefs.getString(key);

  return value;
}
