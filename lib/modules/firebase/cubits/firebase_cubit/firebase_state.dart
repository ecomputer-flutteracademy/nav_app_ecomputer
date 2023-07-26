part of 'firebase_cubit.dart';

class FirebaseState {
  final String nameUser;
  final String uidUser;

  FirebaseState({
    required this.nameUser,
    required this.uidUser,
  });

  factory FirebaseState.initial() {
    return FirebaseState(
      nameUser: 'No hay un Nombre Definido',
      uidUser: '',
    );
  }

  FirebaseState copyWith({String? nameUser, String? uidUser}) {
    return FirebaseState(
      nameUser: nameUser ?? this.nameUser,
      uidUser: uidUser ?? this.uidUser,
    );
  }
}
