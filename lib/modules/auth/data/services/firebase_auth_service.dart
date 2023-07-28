import 'package:firebase_auth/firebase_auth.dart';
import 'package:nav_app_ecomputer/models/user_model.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final myFirebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ); //.then((value) => UserModel.fromFirebaseUser(value));
      print(myFirebaseUser.user!.email);
      print(myFirebaseUser.user!.uid);
      print(myFirebaseUser.user!.phoneNumber);
      print(myFirebaseUser.user!.isAnonymous);
      print(myFirebaseUser.user!.photoURL);
      print(myFirebaseUser.user!.displayName);

      UserModel? myUser = UserModel.fromFirebaseUser(myFirebaseUser);

      print(myUser);
      return myUser;
    } on FirebaseException catch (e) {
      print(e);
      return null;
    }
  }

  Future<UserModel?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final myFirebaseUser = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ); //.then((value) => UserModel.fromFirebaseUser(value));

      UserModel? myUser = UserModel.fromFirebaseUser(myFirebaseUser);

      return myUser;
    } on FirebaseException catch (e) {
      return null;
    }
  }
}
