import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/modules/firebase/data/models/user_model.dart';
import 'package:nav_app_ecomputer/modules/firebase/data/repository/firebase_user_repository.dart';

part 'firebase_state.dart';

class FirebaseCubit extends Cubit<FirebaseState> {
  FirebaseCubit() : super(FirebaseState.initial());
  FirebaseUserRepository firebaseUserRepository = FirebaseUserRepository();

  Future<void> getUserById(String uidUser) async {
    UserModel? myUser = await firebaseUserRepository.getUser(uidUser: uidUser);

    emit(state.copyWith(
      uidUser: myUser!.uid,
      nameUser: myUser.name,
    ));
  }
}
