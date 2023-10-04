// class RecordsModel {
//   final String name;
//   final String address;
//   final String contact;
//   final String photo;
//   final String url;

//   //named parameter
//   const RecordsModel(
//       {required this.name,
//       required this.address,
//       required this.contact,
//       required this.photo,
//       required this.url});

//   //JSON Object - Map => JSON Encode
//   //Map - object =>

//   //member function
//   // fromJSON(Map<String, dynamic> json) {
//   //   return Records(
//   //       name: json['name'],
//   //       address: json['address'],
//   //       contact: json['contact'],
//   //       photo: json['photo'],
//   //       url: json['url']);
//   // }

//   //fromJSON function can't be called as a normal constructor because the normal constructor have no return statement
//   //it can be called as a factory constructor, ie; it can return a return statement use the keyword and call the function using class name dot function name
//   //fromJSON converts map to object
//   factory RecordsModel.fromJSON(Map<String, dynamic> json) {
//     return RecordsModel(
//         name: json['name'],
//         address: json['address'],
//         contact: json['contact'],
//         photo: json['photo'],
//         url: json['url']);
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'records_model.freezed.dart';
part 'records_model.g.dart';

@freezed
class RecordsModel with _$RecordsModel {
  const factory RecordsModel({
    required String name,
    required String address,
    required String contact,
    required String photo,
    required String url,
  }) = _RecordsModel;

  factory RecordsModel.fromJson(Map<String, dynamic> json) =>
      _$RecordsModelFromJson(json);
}
