// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ConnectionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConnectionsScreen(),
      );
    },
    EventCreateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventCreateScreen(),
      );
    },
    EventUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<EventUpdateRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EventUpdateScreen(
          args.event,
          key: args.key,
        ),
      );
    },
    EventsListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventsListScreen(),
      );
    },
    EventsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventsScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [ConnectionsScreen]
class ConnectionsRoute extends PageRouteInfo<void> {
  const ConnectionsRoute({List<PageRouteInfo>? children})
      : super(
          ConnectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConnectionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EventCreateScreen]
class EventCreateRoute extends PageRouteInfo<void> {
  const EventCreateRoute({List<PageRouteInfo>? children})
      : super(
          EventCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventCreateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EventUpdateScreen]
class EventUpdateRoute extends PageRouteInfo<EventUpdateRouteArgs> {
  EventUpdateRoute({
    required Event event,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EventUpdateRoute.name,
          args: EventUpdateRouteArgs(
            event: event,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventUpdateRoute';

  static const PageInfo<EventUpdateRouteArgs> page =
      PageInfo<EventUpdateRouteArgs>(name);
}

class EventUpdateRouteArgs {
  const EventUpdateRouteArgs({
    required this.event,
    this.key,
  });

  final Event event;

  final Key? key;

  @override
  String toString() {
    return 'EventUpdateRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [EventsListScreen]
class EventsListRoute extends PageRouteInfo<void> {
  const EventsListRoute({List<PageRouteInfo>? children})
      : super(
          EventsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EventsScreen]
class EventsRoute extends PageRouteInfo<void> {
  const EventsRoute({List<PageRouteInfo>? children})
      : super(
          EventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
