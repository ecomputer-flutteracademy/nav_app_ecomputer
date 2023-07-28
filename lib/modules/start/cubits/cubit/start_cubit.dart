import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/models/mobile_data_model.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/repository/mobile_local_repository.dart';

part 'start_state.dart';

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(StartState.initial());

  MobileLocalRepository mobileLocalRepository = MobileLocalRepository();

  Future<void> init() async {
    //NOTA: Este valor procede de un service
    //NOTA: Este valor es de forma INICIAL

    MobileDataModel myData = await mobileLocalRepository.getMobileLocalData();
    // bool isUserLogged = false;
    bool? isUserLogged = myData.isUserLogged;

    print("Hola estoy inicializando mi cubit");

    emit(
      state.copyWith(isLogged: isUserLogged),
    );
  }

  Future<void> checkIfUserIsLogged({required bool isUserLogged}) async {
    print(isUserLogged);
    emit(
      state.copyWith(isLogged: isUserLogged),
    );
  }
}
