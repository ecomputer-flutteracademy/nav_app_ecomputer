import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/ui/widgets/mobile_button.dart';

class MobileLocalPage extends StatelessWidget {
  const MobileLocalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            MobileButton(
              title: 'Añadir Datos',
              colorButton: Colors.purple,
            ),
            SizedBox(
              height: 20,
            ),
            MobileButton(
              colorButton: Colors.lightGreen,
              title: 'Recuperar Datos',
            ),
          ],
        ),
      ),
    );
  }
}
