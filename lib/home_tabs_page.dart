import 'package:auto_route/auto_route.dart';
import 'package:auto_route_deep_link_problem/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:profile/routes/profile_router.dart';

@RoutePage()
class HomeTabsPage extends StatelessWidget {
  const HomeTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ProfileWrapperRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final showBottomNav =
            context.topRouteMatch.meta['showBottomNav'] == true;

        Future.delayed(const Duration(milliseconds: 100)).then((value) {
          // Now the value is correct
          print(context.topRouteMatch.meta['showBottomNav']);
        });

        if (!showBottomNav) {
          return const SizedBox();
        }

        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ],
        );
      },
    );
  }
}
