import 'package:advance_flutter_exam/pages/login_page/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static String loginPage = '/LoginPage';
  static String signUpPage = '/SignUpPage';
  static String homePage = '/HomePage';
  static String favoritePage = '/FavoritePage';

  static List<GetPage> routes = [
    GetPage(name: loginPage, page: () => const LoginPage()),
    GetPage(name: signUpPage, page: () => const LoginPage()),
    GetPage(name: homePage, page: () => const LoginPage()),
    GetPage(name: favoritePage, page: () => const LoginPage()),
  ];
}
