import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).navigateNamed(
              '/home/menu/profile',
              includePrefixMatches: true,
            );
          },
          child: const Text(
            'go to profile',
          ),
        ),
      ),
    );
  }
}
