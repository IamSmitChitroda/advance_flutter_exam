import 'package:advance_flutter_exam/headers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.sharedPreferences,
    required this.isLogin,
  });

  final SharedPreferences sharedPreferences;
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    User user = User(
      username: '',
      password: '',
    );

    LoginController loginController = Get.put(
      LoginController(
        sharedPreferences: sharedPreferences,
        isLogin: isLogin,
      ),
    );

    Logger logger = Logger();
    // =========================================================================
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              const Text(
                'Login into\nyour account',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: size.height * 0.1),
              TextField(
                onChanged: (value) {
                  user.username = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Username',
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
              SizedBox(height: size.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?'),
                ],
              ),
              SizedBox(height: size.height * 0.06),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    loginController.login(user: user)
                        ? Get.to(const HomePage())
                        : Get.snackbar(
                            'Error',
                            'Username or password is incorrect',
                          );
                  },
                  child: const Text('Login'),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Get.to(
                        SignupPage(
                          sharedPreferences: sharedPreferences,
                          isLogin: isLogin,
                        ),
                      );
                    },
                    child: const Text('Register'),
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
