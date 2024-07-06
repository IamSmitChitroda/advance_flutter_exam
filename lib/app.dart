import 'package:advance_flutter_exam/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.sharedPreferences,
    required this.isLogin,
  });

  final SharedPreferences sharedPreferences;
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: const Color(0xff464447),
        colorSchemeSeed: Colors.brown,
        // colorSchemeSeed: const Color(0xff464447),
      ),
      initialRoute: Routes.loginPage,
      getPages: Routes.routes,
    );
  }
}
