// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRequsetModel _$$_UserRequsetModelFromJson(Map<String, dynamic> json) =>
    _$_UserRequsetModel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      dob: DateTime.parse(json['dob'] as String),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_UserRequsetModelToJson(_$_UserRequsetModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'dob': instance.dob.toIso8601String(),
      'phone': instance.phone,
    };
