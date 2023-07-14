import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/start/cubits/cubit/start_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              context.pop();
            },
            heroTag: 'F1',
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          FloatingActionButton(
            heroTag: 'F2',
            onPressed: () {
              // context.goNamed(AppRoutes.camisetas.name);
              locator<StartCubit>().checkIfUserIsLogged(isUserLogged: true);
            },
            child: Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("LOGIN PAGE"),
      ),
    );
  }
}
