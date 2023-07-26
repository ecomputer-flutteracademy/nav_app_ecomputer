import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/firebase/cubits/firebase_cubit/firebase_cubit.dart';
import 'package:nav_app_ecomputer/modules/firebase/data/models/user_model.dart';
import 'package:nav_app_ecomputer/modules/firebase/data/services/firestore_service_users.dart';

class FirebasePage extends StatelessWidget {
  const FirebasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        UserModel? myNewUser =
            await FirestoreServiceUsers().getUserById(uid: "1234456");

        print(myNewUser!.name!);
      }),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: BlocBuilder<FirebaseCubit, FirebaseState>(
        bloc: locator<FirebaseCubit>(),
        builder: (context, state) {
          return Center(
            child: Text(
              state.nameUser,
            ),
          );
        },
      ),
    );
  }
}
