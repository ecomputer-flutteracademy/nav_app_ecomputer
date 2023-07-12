import 'package:flutter_bloc/flutter_bloc.dart';

part 'start_state.dart';

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(StartState.initial());

  Future<void> init() async {
    //NOTA: Este valor procede de un service
    //NOTA: Este valor es de forma INICIAL
    bool isUserLogged = false;

    print("Hola estoy inicializando mi cubit");

    emit(
      state.copyWith(isLogged: isUserLogged),
    );
  }

  Future<void> checkIfUserIsLogged({required bool isUserLogged}) async {
    emit(
      state.copyWith(isLogged: isUserLogged),
    );
  }
}
