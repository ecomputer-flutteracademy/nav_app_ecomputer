part of 'mobile_data_cubit.dart';

class MobileDataState {
  final String name;
  final bool isVip;

  MobileDataState({
    required this.name,
    required this.isVip,
  });

  factory MobileDataState.initial() {
    return MobileDataState(
      name: 'No hay Datos Definidos',
      isVip: false,
    );
  }

  MobileDataState copyWith({
    String? name,
    bool? isVip,
  }) {
    return MobileDataState(
      name: name ?? this.name,
      isVip: isVip ?? this.isVip,
    );
  }
}
