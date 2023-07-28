part of 'mobile_data_cubit.dart';

class MobileDataState {
  final String name;
  final bool isVip;
  final bool isUserLogged;

  MobileDataState({
    required this.name,
    required this.isVip,
    required this.isUserLogged,
  });

  factory MobileDataState.initial() {
    return MobileDataState(
      name: 'No hay Datos Definidos',
      isVip: false,
      isUserLogged: false,
    );
  }

  MobileDataState copyWith({
    String? name,
    bool? isVip,
    bool? isUserLogged,
  }) {
    return MobileDataState(
      name: name ?? this.name,
      isVip: isVip ?? this.isVip,
      isUserLogged: isUserLogged ?? this.isUserLogged,
    );
  }
}
