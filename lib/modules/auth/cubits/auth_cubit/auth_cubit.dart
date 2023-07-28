import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/models/user_model.dart';
import 'package:nav_app_ecomputer/modules/auth/data/repository/auth_repository.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/models/mobile_data_model.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/repository/mobile_local_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  AuthRepository authRepository = AuthRepository();

  MobileLocalRepository mobileLocalRepository = MobileLocalRepository();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserModel? myUser = await authRepository.singInWithEmailAndPassword(
        email: email, password: password);

    print(myUser?.uid ?? '');

    if (myUser?.uid != null && myUser!.uid.isNotEmpty) {
      await mobileLocalRepository.setMobileLocalData(
          mobileDataModel: MobileDataModel(isUserLogged: true));
    }

    emit(state.copyWith(uid: myUser?.uid ?? ''));
  }

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserModel? myUser = await authRepository.singUpWithEmailAndPassword(
        email: email, password: password);

    if (myUser?.uid != null && myUser!.uid.isNotEmpty) {
      await mobileLocalRepository.setMobileLocalData(
          mobileDataModel: MobileDataModel(isUserLogged: true));
    }

    emit(state.copyWith(uid: myUser!.uid));
  }
}
