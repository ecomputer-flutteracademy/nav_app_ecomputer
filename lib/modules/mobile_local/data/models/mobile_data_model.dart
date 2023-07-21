// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'mobile_data_model.g.dart';

@JsonSerializable()
class MobileDataModel {
  String? mobileName;
  bool? isVip;
  MobileDataModel({
    this.mobileName,
    this.isVip,
  });

  factory MobileDataModel.fromJson(Map<String, dynamic> json) =>
      _$MobileDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$MobileDataModelToJson(this);
}
