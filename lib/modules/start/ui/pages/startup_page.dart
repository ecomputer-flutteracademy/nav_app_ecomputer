import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/start/cubits/cubit/start_cubit.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartCubit, StartState>(
      bloc: locator<StartCubit>()..init(),
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
