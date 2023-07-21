import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/cubit/mobile_data/mobile_data_cubit.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/ui/widgets/mobile_button.dart';

class MobileLocalPage extends StatelessWidget {
  const MobileLocalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<MobileDataCubit, MobileDataState>(
            bloc: locator<MobileDataCubit>(),
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (state.isVip)
                        const Icon(
                          Icons.check_box,
                          color: Colors.green,
                        ),
                      Text(state.name)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MobileButton(
                    title: 'Añadir Datos',
                    colorButton: Colors.purple[100]!,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MobileButton(
                    colorButton: Colors.lightGreen,
                    title: 'Recuperar Datos',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
