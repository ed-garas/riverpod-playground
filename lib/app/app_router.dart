import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart'; // Import this manually to support Key
import 'package:friends/features/splash_screen/splash_screen.dart';
import 'package:friends/features/main_screen/main_screen.dart';
import 'package:friends/features/login_screen/login_screen.dart';
import 'package:friends/features/events_screen/events_screen.dart';
import 'package:friends/features/connections_screen/connections_screen.dart';
import 'package:friends/features/profile_screen/profile_screen.dart';

import 'package:friends/features/my_events/events_list_screen.dart';
import 'package:friends/features/my_events/event_create_screen.dart';
import 'package:friends/features/my_events/event_update_screen.dart';

import '../models/event.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // CustomRoute(
        //   initial: true,
        //   page: SplashRoute.page,
        //   transitionsBuilder: TransitionsBuilders.noTransition,
        //   durationInMilliseconds: 400,
        // ),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
            initial: true,
            page: MainRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 400,
            children: [
              AutoRoute(page: EventsRoute.page),
              AutoRoute(page: EventsListRoute.page),
              AutoRoute(page: ConnectionsRoute.page),
              AutoRoute(page: ProfileRoute.page),
            ]),
        AutoRoute(page: EventCreateRoute.page),
        AutoRoute(page: EventUpdateRoute.page),
        // AutoRoute(path: '/root', page: MainRoute.page, children: [
        //   AutoRoute(page: Tab01ServicesRoute.page),
        //   AutoRoute(page: Tab02MyServicesRoute.page),
        //   AutoRoute(page: Tab03MessagesRoute.page),
        //   AutoRoute(page: Tab04SettingsRoute.page),
        // ]),
      ];
}
