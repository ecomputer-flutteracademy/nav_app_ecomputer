import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/auth/ui/pages/login_page.dart';
import 'package:nav_app_ecomputer/modules/auth/ui/pages/register_page.dart';
import 'package:nav_app_ecomputer/modules/auth/ui/pages/welcome_page.dart';
import 'package:nav_app_ecomputer/modules/bicicletas/pages/bicicletas_page.dart';
import 'package:nav_app_ecomputer/modules/camisetas/pages/camisetas_page.dart';
import 'package:nav_app_ecomputer/modules/firebase/ui/pages/firebase_page.dart';
import 'package:nav_app_ecomputer/modules/home/pages/home_page.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/pages/details_rick_morty.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/pages/home_rick_morty.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/ui/pages/mobile_local_page.dart';
import 'package:nav_app_ecomputer/modules/start/cubits/cubit/start_cubit.dart';
import 'package:nav_app_ecomputer/modules/start/ui/pages/startup_page.dart';

enum AppRoutes {
  startApp,
  welcome,
  login,
  register,
  home,
  bicicletas,
  camisetas,
  homeRickMorty,
  detailsRickMorty,
  startup,
  mobileLocal,
  firebase,
}

final useBloc = locator<StartCubit>();

final List<String> routesWihtoutAuth = [
  // '/',
  '/welcome',
  '/welcome/login',
  '/welcome/register',
];

final List<String> routesWihtAuth = [
  '/home',
  '/home/camisetas',
  '/home/bicicletas',
  '/home/homeRickMorty',
  '/home/homeRickMorty/detailsRickMorty',
  '/home/mobileLocal',
  '/home/firebase',
];

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  refreshListenable: GoRouterRefreshStream(useBloc.stream),
  redirect: (context, state) {
    print(!routesWihtoutAuth.contains(state.location));
    print(!routesWihtAuth.contains(state.location));
    if (useBloc.state.isLogged == false &&
        !routesWihtoutAuth.contains(state.location)) {
      return '/welcome';
    } else if (useBloc.state.isLogged == true &&
        !routesWihtAuth.contains(state.location)) {
      return '/home';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.startApp.name,
      builder: (context, state) {
        return const StartupPage();
      },
    ),
    GoRoute(
      path: '/welcome',
      name: AppRoutes.welcome.name,
      builder: (context, state) {
        return const WelcomePage();
      },
      routes: [
        GoRoute(
          path: 'login',
          name: AppRoutes.login.name,
          builder: (context, state) {
            return const LoginPage();
          },
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
    GoRoute(
      path: '/home',
      name: AppRoutes.home.name,
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
        GoRoute(
            path: 'homeRickMorty',
            name: AppRoutes.homeRickMorty.name,
            builder: (context, state) {
              return const HomeRickMorty();
            },
            routes: [
              GoRoute(
                path: 'detailsRickMorty',
                name: AppRoutes.detailsRickMorty.name,
                builder: (context, state) {
                  return DetailsRickMorty(
                    characterOject: state.extra as CharacterRickMortyObject,
                  );
                },
              ),
            ]),
        GoRoute(
          path: 'mobileLocal',
          name: AppRoutes.mobileLocal.name,
          builder: (context, state) {
            return const MobileLocalPage();
          },
        ),
        GoRoute(
          path: 'firebase',
          name: AppRoutes.firebase.name,
          builder: (context, state) {
            return const FirebasePage();
          },
        ),
      ],
    )
  ],
);

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }
  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
