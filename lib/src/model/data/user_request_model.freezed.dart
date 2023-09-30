// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRequestModel _$UserRequestModelFromJson(Map<String, dynamic> json) {
  return _UserRequsetModel.fromJson(json);
}

/// @nodoc
mixin _$UserRequestModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  DateTime get dob => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestModelCopyWith<UserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestModelCopyWith<$Res> {
  factory $UserRequestModelCopyWith(
          UserRequestModel value, $Res Function(UserRequestModel) then) =
      _$UserRequestModelCopyWithImpl<$Res, UserRequestModel>;
  @useResult
  $Res call(
      {String name, String email, String password, DateTime dob, String phone});
}

/// @nodoc
class _$UserRequestModelCopyWithImpl<$Res, $Val extends UserRequestModel>
    implements $UserRequestModelCopyWith<$Res> {
  _$UserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? dob = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRequsetModelCopyWith<$Res>
    implements $UserRequestModelCopyWith<$Res> {
  factory _$$_UserRequsetModelCopyWith(
          _$_UserRequsetModel value, $Res Function(_$_UserRequsetModel) then) =
      __$$_UserRequsetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String email, String password, DateTime dob, String phone});
}

/// @nodoc
class __$$_UserRequsetModelCopyWithImpl<$Res>
    extends _$UserRequestModelCopyWithImpl<$Res, _$_UserRequsetModel>
    implements _$$_UserRequsetModelCopyWith<$Res> {
  __$$_UserRequsetModelCopyWithImpl(
      _$_UserRequsetModel _value, $Res Function(_$_UserRequsetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? dob = null,
    Object? phone = null,
  }) {
    return _then(_$_UserRequsetModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequsetModel implements _UserRequsetModel {
  const _$_UserRequsetModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.dob,
      required this.phone});

  factory _$_UserRequsetModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserRequsetModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final DateTime dob;
  @override
  final String phone;

  @override
  String toString() {
    return 'UserRequestModel(name: $name, email: $email, password: $password, dob: $dob, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRequsetModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, dob, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRequsetModelCopyWith<_$_UserRequsetModel> get copyWith =>
      __$$_UserRequsetModelCopyWithImpl<_$_UserRequsetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRequsetModelToJson(
      this,
    );
  }
}

abstract class _UserRequsetModel implements UserRequestModel {
  const factory _UserRequsetModel(
      {required final String name,
      required final String email,
      required final String password,
      required final DateTime dob,
      required final String phone}) = _$_UserRequsetModel;

  factory _UserRequsetModel.fromJson(Map<String, dynamic> json) =
      _$_UserRequsetModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  DateTime get dob;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_UserRequsetModelCopyWith<_$_UserRequsetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
