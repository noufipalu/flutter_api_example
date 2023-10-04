// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'records_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordsModel _$RecordsModelFromJson(Map<String, dynamic> json) {
  return _RecordsModel.fromJson(json);
}

/// @nodoc
mixin _$RecordsModel {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsModelCopyWith<RecordsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsModelCopyWith<$Res> {
  factory $RecordsModelCopyWith(
          RecordsModel value, $Res Function(RecordsModel) then) =
      _$RecordsModelCopyWithImpl<$Res, RecordsModel>;
  @useResult
  $Res call(
      {String name, String address, String contact, String photo, String url});
}

/// @nodoc
class _$RecordsModelCopyWithImpl<$Res, $Val extends RecordsModel>
    implements $RecordsModelCopyWith<$Res> {
  _$RecordsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? contact = null,
    Object? photo = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordsModelCopyWith<$Res>
    implements $RecordsModelCopyWith<$Res> {
  factory _$$_RecordsModelCopyWith(
          _$_RecordsModel value, $Res Function(_$_RecordsModel) then) =
      __$$_RecordsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String address, String contact, String photo, String url});
}

/// @nodoc
class __$$_RecordsModelCopyWithImpl<$Res>
    extends _$RecordsModelCopyWithImpl<$Res, _$_RecordsModel>
    implements _$$_RecordsModelCopyWith<$Res> {
  __$$_RecordsModelCopyWithImpl(
      _$_RecordsModel _value, $Res Function(_$_RecordsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? contact = null,
    Object? photo = null,
    Object? url = null,
  }) {
    return _then(_$_RecordsModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordsModel implements _RecordsModel {
  const _$_RecordsModel(
      {required this.name,
      required this.address,
      required this.contact,
      required this.photo,
      required this.url});

  factory _$_RecordsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecordsModelFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final String contact;
  @override
  final String photo;
  @override
  final String url;

  @override
  String toString() {
    return 'RecordsModel(name: $name, address: $address, contact: $contact, photo: $photo, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, address, contact, photo, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordsModelCopyWith<_$_RecordsModel> get copyWith =>
      __$$_RecordsModelCopyWithImpl<_$_RecordsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordsModelToJson(
      this,
    );
  }
}

abstract class _RecordsModel implements RecordsModel {
  const factory _RecordsModel(
      {required final String name,
      required final String address,
      required final String contact,
      required final String photo,
      required final String url}) = _$_RecordsModel;

  factory _RecordsModel.fromJson(Map<String, dynamic> json) =
      _$_RecordsModel.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  String get contact;
  @override
  String get photo;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_RecordsModelCopyWith<_$_RecordsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
