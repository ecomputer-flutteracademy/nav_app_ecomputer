import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';
import 'package:nav_app_ecomputer/modules/home/pages/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print("Hola mmundo");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => DetailsPage()),
          // );
        },
        heroTag: 'F1',
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            context.goNamed(AppRoutes.login.name);
          },
          heroTag: 'F2',
          child: const Icon(
            Icons.remove,
          ),
        ),
      ),
    );
  }
}
