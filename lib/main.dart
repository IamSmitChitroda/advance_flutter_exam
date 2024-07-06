import 'headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool isLogin = sharedPreferences.getBool('isLogin') ?? false;
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
    MyApp(
      isLogin: isLogin,
      sharedPreferences: sharedPreferences,
    ),
  );
}
