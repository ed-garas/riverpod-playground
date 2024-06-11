import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friends/gen/assets.gen.dart';
import 'package:friends/services/api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/login.dart';
import '../../providers/auth_provider.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordVisible = useState(false);

    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    Future<void> login() async {
      try {
        await ref.read(authenticationProvider.notifier).login(Login(
              username: usernameController.text,
              password: passwordController.text,
            ));
      } on ApiClientException catch (e) {
        print('Login failed: ${e.responseMessage}');
        if (!context.mounted) return;
        // context.showTextSnackBar(e.responseMessage ?? 'Login failed');
      }
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.loginBg.path),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Assets.images.hellomate.svg(
                    width: MediaQuery.of(context).size.width * 0.5,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              ),
              const Spacer(),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () =>
                        isPasswordVisible.value = !isPasswordVisible.value,
                  ),
                ),
                obscureText: !isPasswordVisible.value,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Login')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
