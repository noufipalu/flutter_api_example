import 'dart:convert';

import 'package:datainflutter/src/model/records_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class RecordsController {
  Future<List<RecordsModel>> getData() async {
    //reading the JSONArray file
    String rawData = await rootBundle
        .loadString("assets/data/records.json"); //data as String
    //decoding the JSONArray String to List<Map>
    List<dynamic> decodedData = jsonDecode(rawData);
    //iterating the list using map method to intance of object
    List<RecordsModel> records = decodedData
        .map((item) => RecordsModel.fromJson(item as Map<String, dynamic>))
        .toList();

    return records;
  }
}
