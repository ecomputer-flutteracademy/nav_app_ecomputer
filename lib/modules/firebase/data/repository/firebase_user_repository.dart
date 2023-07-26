import 'package:nav_app_ecomputer/models/user_model.dart';
import 'package:nav_app_ecomputer/modules/firebase/data/services/firestore_service_users.dart';

class FirebaseUserRepository {
  FirestoreServiceUsers firestoreServiceUsers = FirestoreServiceUsers();
  Future<void> createNewUser({
    required String uidUser,
    required String nameUser,
  }) async {
    await firestoreServiceUsers.createNewUser(
        uidUser: uidUser, nameUser: nameUser);
  }

  Future<UserModel?> getUser({required String uidUser}) async {
    final myUser = await firestoreServiceUsers.getUserById(uid: uidUser);

    return myUser;
  }

  //Puede haber mas services... ej: Guardar en Local el uid.
}
