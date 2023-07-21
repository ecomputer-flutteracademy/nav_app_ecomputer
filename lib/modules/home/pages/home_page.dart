import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       print("Hola mmundo");
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => DetailsPage()),
    //       );
    //       context.goNamed(AppRoutes.bicicletas.name);
    //     },
    //     heroTag: 'F3',
    //     child: const Icon(
    //       Icons.add,
    //     ),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         FloatingActionButton(
    //           onPressed: () {
    //             context.goNamed(AppRoutes.camisetas.name);
    //           },
    //           heroTag: 'F2',
    //           child: const Icon(
    //             Icons.remove,
    //           ),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         FloatingActionButton(
    //           onPressed: () {
    //             locator<StartCubit>().checkIfUserIsLogged(isUserLogged: false);
    //           },
    //           heroTag: 'F1',
    //           child: const Icon(
    //             Icons.close,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.goNamed(AppRoutes.homeRickMorty.name);
              },
              child: const CircleAvatar(
                radius: 75,
                backgroundImage:
                    AssetImage("assets/images/module_rick_morty.png"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              radius: 75,
            ),
          ],
        ),
      ),
    );
  }
}
