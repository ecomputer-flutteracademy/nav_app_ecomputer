import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';

class CamisetasPage extends StatelessWidget {
  const CamisetasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
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
            onPressed: () {
              context.goNamed(AppRoutes.bicicletas.name);
            },
            heroTag: 'F2',
            child: Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("CAMISETAS PAGE"),
      ),
    );
  }
}
