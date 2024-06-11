import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friends/app/app_router.dart';
import 'package:friends/gen/assets.gen.dart';
import 'package:friends/providers/auth_provider.dart';

@RoutePage()
class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  SvgPicture getIcon(SvgGenImage image, {active = false}) {
    return image.svg(
        width: 32,
        height: 32,
        colorFilter: ColorFilter.mode(
            active ? Colors.black : Colors.grey, BlendMode.srcIn));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Future<void> logout() async {
    //   ref.read(authenticationProvider.notifier).logout();
    // }

    return AutoTabsScaffold(
      routes: const [
        EventsRoute(),
        EventsListRoute(),
        ConnectionsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 28,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: tabsRouter.activeIndex,
          elevation: 0,
          onTap: (int index) {
            tabsRouter.setActiveIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: getIcon(Assets.icons.stack),
              activeIcon: getIcon(Assets.icons.stack, active: true),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: getIcon(Assets.icons.packageBox),
              activeIcon: getIcon(Assets.icons.packageBox, active: true),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: getIcon(Assets.icons.messageDotsRound),
              activeIcon: getIcon(Assets.icons.messageDotsRound, active: true),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: getIcon(Assets.icons.userSquare),
              activeIcon: getIcon(Assets.icons.userSquare, active: true),
              label: '',
            ),
          ],
        );
      },
    );
  }
}
