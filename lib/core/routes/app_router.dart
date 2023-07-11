import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/modules/auth/pages/login_page.dart';
import 'package:nav_app_ecomputer/modules/auth/pages/register_page.dart';
import 'package:nav_app_ecomputer/modules/bicicletas/pages/bicicletas_page.dart';
import 'package:nav_app_ecomputer/modules/camisetas/pages/camisetas_page.dart';
import 'package:nav_app_ecomputer/modules/home/pages/details_page.dart';
import 'package:nav_app_ecomputer/modules/home/pages/home_page.dart';

enum AppRoutes {
  startApp,
  login,
  register,
  bicicletas,
  camisetas,
}

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.startApp.name,
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'login',
          name: AppRoutes.login.name,
          builder: (context, state) {
            return const HomePage();
          },
          routes: [
            GoRoute(
              path: 'camisetas',
              name: AppRoutes.camisetas.name,
              builder: (context, state) {
                return const CamisetasPage();
              },
            ),
            GoRoute(
              path: 'bicicletas',
              name: AppRoutes.bicicletas.name,
              builder: (context, state) {
                return const BicicletasPage();
              },
            ),
          ],
        ),
        GoRoute(
          path: 'register',
          name: AppRoutes.register.name,
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
      ],
    ),
  ],
);
