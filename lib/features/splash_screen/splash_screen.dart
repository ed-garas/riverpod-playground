import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:friends/app/app_router.dart';

import '../../providers/auth_provider.dart';

@RoutePage()
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final auth = ref.watch(authenticationProvider);
    // if (auth == AuthenticationState.unauthenticated ||
    //     auth == AuthenticationState.unknown) {
    //   AutoRouter.of(context).replace(const LoginRoute());
    // } else {
    //   AutoRouter.of(context).replace(const MainRoute());
    // }
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
