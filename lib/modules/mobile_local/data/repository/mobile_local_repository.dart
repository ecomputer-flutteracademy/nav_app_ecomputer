import 'dart:convert';

import 'package:nav_app_ecomputer/modules/mobile_local/data/models/mobile_data_model.dart';
import 'package:nav_app_ecomputer/modules/mobile_local/data/services/local_db_service.dart';

class MobileLocalRepository {
  LocalDbService localDbService = LocalDbService();

  //Este es: LocalDbService

  Future<void> setMobileLocalData(
      {required MobileDataModel mobileDataModel}) async {
    await localDbService.setMobileLocalData(mobileDataModel: mobileDataModel);
  }

  Future<MobileDataModel> getMobileLocalData() async {
    String? myPath = await localDbService.getMobileLocalData();

    if (myPath != null) {
      final myMobileLocalData = MobileDataModel.fromJson(jsonDecode(myPath));
      return myMobileLocalData;
    } else {
      return MobileDataModel();
    }
  }

  //Puede haber mas Services...
}
