import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';
import 'package:nav_app_ecomputer/modules/start/cubits/cubit/start_cubit.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartCubit, StartState>(
      bloc: locator<StartCubit>()..init(),
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.goNamed(AppRoutes.login.name);
            },
            child: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          body: const Center(
            child: Text('Bienvenid@'),
          ),
        );
      },
    );
  }
}
