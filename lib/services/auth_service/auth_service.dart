import '../../core.dart';
import '../../module/model/user/user.dart';

class AuthService {
  static String? token;
  static User? currentUser;
  String endpoint = "login";
  String logout = "logout";
  static const baseUrl = 'http://10.171.255.235:8000';
  login({required String email, required String password}) async {
    try {
      var response = await Dio().post(
        '$baseUrl/api/$endpoint',
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      Map<String, dynamic> obj = response.data;
      currentUser = User.fromJson(obj);
      token = "Bearer " + obj["token"];
      print(obj["token"]);

      DB.setUser(currentUser!.toJson());
      DB.setToken(token!);

      print(DB.getToken());
    } on Exception catch (err) {}
  }

  logoutAccount() async {
    final token = DB.getToken();
    try {
      // Ganti URL sesuai dengan URL logout Anda
      var response = await Dio().post(
        '$baseUrl/api/$logout',
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': token,
          },
        ),
      );

      if (response.statusCode == 302) {
        // Jika status code 302, cek header 'location' untuk mendapatkan lokasi baru

        DB.clearToken();
        DB.clearUser();

        print('Logout successful');
        print(DB.getToken());
      } else {
        print('Logout failed');
      }
    } catch (error) {
      print('Error during logout: $error');
      print(DB.getToken());
    }
  }
}
