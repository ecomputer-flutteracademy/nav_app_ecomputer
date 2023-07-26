// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String uid;
  int? edad;
  String? name;
  UserModel({
    required this.uid,
    this.edad,
    this.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromFirebaseUser(UserCredential firebaseCredentials) {
    return UserModel(
      uid: firebaseCredentials.user?.uid ?? '',
      name: firebaseCredentials.user?.displayName ?? '',
    );
  }
}
