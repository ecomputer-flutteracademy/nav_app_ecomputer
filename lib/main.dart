import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';
import 'package:nav_app_ecomputer/firebase_options.dart';

import 'core/locator/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
