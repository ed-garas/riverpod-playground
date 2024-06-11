// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friends/providers/auth_provider.dart';

import 'app_router.dart';
import 'app_theme.dart';
import 'constants.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> {
  final appRouter = AppRouter();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  void redirectOnAuthStateChange(AuthenticationState auth) {
    if (auth == AuthenticationState.unauthenticated ||
        auth == AuthenticationState.unknown) {
      appRouter.replace(const LoginRoute());
    } else {
      appRouter.replace(const MainRoute());
    }
  }

  @override
  void initState() {
    super.initState();
    redirectOnAuthStateChange(ref.read(authenticationProvider));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthenticationState>(authenticationProvider, ((previous, next) {
      redirectOnAuthStateChange(next);
    }));
    print('MyApp build');
    return ScreenUtilInit(
      designSize: const Size(
          AppDimensions.prototypeWidth, AppDimensions.prototypeHeight),
      child: MaterialApp.router(
        title: 'friends',
        theme: theme(),
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}

// class MyApp2 extends ConsumerWidget {
//   MyApp2({super.key});
//   final appRouter = AppRouter();
//   final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
//
//   void redirectOnAuthStateChange(AuthenticationState auth) {
//     if (auth == AuthenticationState.unauthenticated ||
//         auth == AuthenticationState.unknown) {
//       appRouter.replace(const LoginRoute());
//     } else {
//       appRouter.replace(const MainRoute());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final auth = ref.watch(authenticationProvider);
//     // redirectOnAuthStateChange(auth);
//     ref.listen<AuthenticationState>(authenticationProvider, ((previous, next) {
//       redirectOnAuthStateChange(next);
//     }));
//     print('MyApp build');
//     return ScreenUtilInit(
//       designSize: const Size(
//           AppDimensions.prototypeWidth, AppDimensions.prototypeHeight),
//       child: MaterialApp.router(
//         title: 'friends',
//         routerDelegate: appRouter.delegate(),
//         routeInformationParser: appRouter.defaultRouteParser(),
//       ),
//     );
//   }
// }
