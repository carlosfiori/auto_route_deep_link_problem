import 'package:auto_route/auto_route.dart';
import 'package:auto_route_deep_link_problem/home_page.dart';
import 'package:auto_route_deep_link_problem/home_tabs_page.dart';
import 'package:profile/routes/profile_router.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(modules: [ProfileRouter])
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeTabsRoute.page,
          path: '/home',
          initial: true,
          meta: const {
            'showBottomNav': true,
          },
          children: [
            AutoRoute(page: HomeRoute.page, path: '', meta: const {
              'showBottomNav': true,
            }),
            AutoRoute(
              page: ProfileWrapperRoute.page,
              path: 'menu',
              meta: const {
                'showBottomNav': true,
              },
              children: [
                AutoRoute(
                  page: MenuRoute.page,
                  path: '',
                  meta: const {
                    'showBottomNav': true,
                  },
                ),
                AutoRoute(
                  page: ProfileRoute.page,
                  path: 'profile',
                  meta: const {
                    'showBottomNav': false,
                  },
                ),
              ],
            ),
          ],
        ),
      ];
}
