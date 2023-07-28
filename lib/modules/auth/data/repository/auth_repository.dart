import 'package:nav_app_ecomputer/models/user_model.dart';
import 'package:nav_app_ecomputer/modules/auth/data/services/firebase_auth_service.dart';

class AuthRepository {
  FirebaseAuthService firebaseAuthService = FirebaseAuthService();

  Future<UserModel?> singInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserModel? myUser = await firebaseAuthService.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    print(myUser?.uid ?? '');

    return myUser;
  }

  Future<UserModel?> singUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserModel? myUser = await firebaseAuthService.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );

    print(myUser?.uid ?? '');

    return myUser;
  }
}
