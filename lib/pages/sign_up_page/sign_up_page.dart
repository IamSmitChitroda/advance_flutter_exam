import 'package:advance_flutter_exam/controller/login_controoler.dart';
import 'package:advance_flutter_exam/headers.dart';
import 'package:advance_flutter_exam/pages/login_page/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({
    super.key,
    required this.sharedPreferences,
    required this.isLogin,
  });

  final SharedPreferences sharedPreferences;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    User user = User(username: '', password: '');
    LoginController loginController = Get.put(
      LoginController(
        isLogin: isLogin,
        sharedPreferences: sharedPreferences,
      ),
    );
    // =========================================================================
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              const Text(
                'Create\nyour account',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: size.height * 0.1),
              TextField(
                onChanged: (value) {
                  user.username = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextField(
                onChanged: (value) {
                  user.password = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              TextField(
                onChanged: (value) {
                  user.password = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                ),
              ),
              SizedBox(height: size.height * 0.08),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    loginController.signUp(user: user);
                    Get.to(
                      LoginPage(
                        sharedPreferences: sharedPreferences,
                        isLogin: isLogin,
                      ),
                    );
                    // Get.toNamed(Routes.loginPage);
                  },
                  child: const Text('Sign up'),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Login'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
