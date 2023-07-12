part of 'start_cubit.dart';

class StartState {
  final bool? isLogged;

  StartState({this.isLogged});

  factory StartState.initial() {
    return StartState();
  }

  StartState copyWith({
    bool? isLogged,
  }) {
    return StartState(
      isLogged: isLogged ?? this.isLogged,
    );
  }
}
