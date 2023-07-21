import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/models/mobile_data_model.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/repository/mobile_local_repository.dart';

part 'mobile_data_state.dart';

class MobileDataCubit extends Cubit<MobileDataState> {
  MobileLocalRepository mobileLocalRepository = MobileLocalRepository();
  MobileDataCubit() : super(MobileDataState.initial());

  Future<void> setMobileData({
    String? name,
    bool? isVip,
  }) async {
    MobileDataModel mobileDataModel = MobileDataModel(
      mobileName: name,
      isVip: isVip,
    );
    await mobileLocalRepository.setMobileLocalData(
        mobileDataModel: mobileDataModel);

    emit(state.copyWith(name: name, isVip: isVip));
  }

  Future<void> getMobileLocalData() async {
    MobileDataModel myData = await mobileLocalRepository.getMobileLocalData();

    emit(state.copyWith(name: myData.mobileName, isVip: myData.isVip));
  }
}
