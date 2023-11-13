import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core.dart';
import '../../module/model/user/user.dart';

class DB {
  static late SharedPreferences db;

  static init() async {
    db = await SharedPreferences.getInstance();
    var userMap = getUser();
    var token = getToken();
    if (userMap != null) {
      return AuthService.currentUser = User.fromJson(userMap);
    }
    AuthService.token = token;
  }

  static setToken(String token) {
    db.setString("token", token);
  }

  static String? getToken() {
    return db.getString("token");
  }

  static setUser(Map currentUser) {
    db.setString("current_user", jsonEncode(currentUser));
  }

  static Map<String, dynamic>? getUser() {
    var jsonString = db.getString("current_user");
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  static clearToken() {
    db.remove("token");
    AuthService.token = null;
  }

  static clearUser() {
    db.remove("current_user");
    AuthService.currentUser = null;
  }
}
