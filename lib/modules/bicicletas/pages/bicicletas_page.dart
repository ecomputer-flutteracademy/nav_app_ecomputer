import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';

class BicicletasPage extends StatelessWidget {
  const BicicletasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            heroTag: 'F1',
            onPressed: () {
              context.pop();
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          FloatingActionButton(
            heroTag: 'F2',
            onPressed: () {
              context.goNamed(AppRoutes.camisetas.name);
            },
            child: Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("BICICLETAS PAGE"),
      ),
    );
  }
}
