import 'dart:convert';

import 'package:nav_app_ecomputer/modules/mobile_local/data/models/mobile_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDbService {
  Future<void> setMobileLocalData(
      {required MobileDataModel mobileDataModel}) async {
    //Obtengo la Instancia.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String myStringData = jsonEncode(mobileDataModel);

    await prefs.setString('mobileData', myStringData);
  }

  Future<String?> getMobileLocalData() async {
    //Obtengo la Instancia.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? myStringData = prefs.getString('mobileData');

    return myStringData;
  }
}
