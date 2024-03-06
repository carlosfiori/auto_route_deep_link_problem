import 'package:auto_route_deep_link_problem/routes/app_router.dart';
import 'package:flutter/material.dart';

final appRouter = AppRouter();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: HomePage(),
    // );

    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: appRouter.config(
        includePrefixMatches: false,
      ),
    );
  }
}
