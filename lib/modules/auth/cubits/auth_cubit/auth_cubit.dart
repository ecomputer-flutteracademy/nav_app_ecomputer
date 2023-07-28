import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/models/user_model.dart';
import 'package:nav_app_ecomputer/modules/auth/data/repository/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  AuthRepository authRepository = AuthRepository();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserModel? myUser = await authRepository.singInWithEmailAndPassword(
        email: email, password: password);

    print(myUser?.uid ?? '');
    emit(state.copyWith(uid: myUser?.uid ?? ''));
  }

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserModel? myUser = await authRepository.singUpWithEmailAndPassword(
        email: email, password: password);

    emit(state.copyWith(uid: myUser!.uid));
  }
}
