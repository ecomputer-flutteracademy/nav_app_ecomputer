import 'package:get_it/get_it.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/cubit/characters/characters_cubit.dart';
import 'package:nav_app_ecomputer/modules/start/cubits/cubit/start_cubit.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  await registerCubits();
}

registerCubits() async {
  if (!locator.isRegistered<StartCubit>()) {
    locator.registerLazySingleton<StartCubit>(
      () => StartCubit(),
    );
  }
  if (!locator.isRegistered<CharactersCubit>()) {
    locator.registerLazySingleton<CharactersCubit>(
      () => CharactersCubit(),
    );
  }
}
