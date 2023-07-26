import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nav_app_ecomputer/models/user_model.dart';

class FirestoreServiceUsers {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = "USERS";

  Future<void> createNewUser({
    required String uidUser,
    required String nameUser,
  }) async {
    try {
      //CREAR O MODIFICAR UN DOCUMENTO
      await _firestore.collection(_collection).doc(uidUser).set({
        "uid": uidUser,
        "name": nameUser,
      });
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  Future<void> editUser({
    required String uidUser,
    String? name,
    int? edad,
  }) async {
    //ACTUALIZAR UN DOCUMENTO
    try {
      await _firestore.collection(_collection).doc(uidUser).update({
        "uid": uidUser,
        "name": name ?? 'No tengo un cubit por ahora',
        "edad": edad ?? 0,
      });
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  Future<void> editNameUser({
    required String uidUser,
    required String name,
  }) async {
    //ACTUALIZAR UN DOCUMENTO
    try {
      await _firestore.collection(_collection).doc(uidUser).update({
        "uid": uidUser,
        "name": name,
      });
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  Future<void> deleteUser({required String uidUser}) async {
    try {
      await _firestore.collection(_collection).doc(uidUser).delete();
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  Future<UserModel?> getUserById({required String uid}) async {
    try {
      final querySnapshotInfo = await _getUserByIdFirebase(uid: uid);
      final users =
          querySnapshotInfo.docs.map((snapshot) => snapshot.data()).toList();

      return users.isEmpty ? null : users.first;
    } catch (e) {
      return null;
    }
  }

  Future<QuerySnapshot<UserModel>> _getUserByIdFirebase(
      {required String uid}) async {
    return await _firestore
        .collection(_collection)
        .where('uid', isEqualTo: uid)
        .withConverter(
          fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
          toFirestore: (newUserModel, _) => newUserModel.toJson(),
        )
        .get();
  }
}
