import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.goNamed(AppRoutes.login.name);
        },
        child: Icon(
          Icons.arrow_forward_ios,
        ),
      ),
      body: Center(
        child: Text('Bienvenid@'),
      ),
    );
  }
}
