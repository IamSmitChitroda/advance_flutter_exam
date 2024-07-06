import 'package:advance_flutter_exam/headers.dart';

class LoginController extends GetxController {
  LoginController({required this.sharedPreferences, required bool isLogin}) {
    this.isLogin(isLogin);
  }

  final RxBool isLogin = false.obs;
  final SharedPreferences sharedPreferences;

  User user = User(username: '', password: '');

  bool login({required User user}) {
    this.user == user
        ? sharedPreferences.setBool('isLogin', true)
        : sharedPreferences.setBool('isLogin', false);
    return this.user == user;
  }

  void signUp({required User user}) {
    this.user = user;
  }
}
