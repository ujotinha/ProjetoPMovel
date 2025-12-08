import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<void> setUserId(int userId) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setInt('USER_ID', userId);
  }

  Future<void> setUserStatus(int status) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setInt('LOGIN', status);
  }

  Future<int> getUserID() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    int? userId = instance.getInt('USER_ID');

    return userId ?? 0;
  }

  Future<int> getUserStatus() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    int? status = instance.getInt('LOGIN');
    return status ?? 0;
  }
}