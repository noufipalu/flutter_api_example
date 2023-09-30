import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_request_model.freezed.dart';
part 'user_request_model.g.dart';

@freezed
class UserRequestModel with _$UserRequestModel {
  const factory UserRequestModel({
    required String name,
    required String email,
    required String password,
    required DateTime dob,
    required String phone,
  }) = _UserRequsetModel;

  factory UserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserRequestModelFromJson(json);
}
