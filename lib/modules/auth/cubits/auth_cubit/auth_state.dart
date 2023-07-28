part of 'auth_cubit.dart';

class AuthState {
  final String uid;

  AuthState({required this.uid});

  factory AuthState.initial() {
    return AuthState(
      uid: '',
    );
  }

  AuthState copyWith({String? uid}) {
    return AuthState(
      uid: uid ?? this.uid,
    );
  }
}
