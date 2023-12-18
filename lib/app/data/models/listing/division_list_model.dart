// To parse this JSON data, do
//
//     final divisionListModel = divisionListModelFromJson(jsonString);

import 'dart:convert';

DivisionListModel divisionListModelFromJson(String str) =>
    DivisionListModel.fromJson(json.decode(str));

String divisionListModelToJson(DivisionListModel data) =>
    json.encode(data.toJson());

class DivisionListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  DivisionListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory DivisionListModel.fromJson(Map<String, dynamic> json) =>
      DivisionListModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final String? prm;
  final int? val;

  Datum({
    this.prm,
    this.val,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        prm: json["prm"],
        val: json["val"],
      );

  Map<String, dynamic> toJson() => {
        "prm": prm,
        "val": val,
      };
}
