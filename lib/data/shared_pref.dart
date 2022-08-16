import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  void setLogin(String username) async {
    SharedPreferences getPref = await _pref;
    getPref.setBool('isLogin', true);
    getPref.setString('username', username);
  }

  void setLogout() async {
    SharedPreferences getPref = await _pref;
    getPref.setBool('isLogin', false);
    getPref.remove('username');
  }

  Future<String> getUsername() async {
    SharedPreferences getPref = await _pref;
    String username = await getPref.getString('username') ?? 'untitled';
    return username;
  }

  Future<bool> getLoginStatus() async {
    SharedPreferences getPref = await _pref;
    bool status = await getPref.getBool('isLogin') ?? false;
    return status;
  }
}
