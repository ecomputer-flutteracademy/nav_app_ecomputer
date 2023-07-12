import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';

import 'core/locator/locator.dart';

void main() async {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
