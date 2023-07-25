part of 'firebase_cubit.dart';

class FirebaseState {
  final String nameUser;

  FirebaseState({required this.nameUser});

  factory FirebaseState.initial() {
    return FirebaseState(nameUser: 'No hay un Nombre Definido');
  }

  FirebaseState copyWith({String? nameUser}) {
    return FirebaseState(
      nameUser: nameUser ?? this.nameUser,
    );
  }
}
