// To parse this JSON data, do
//
//     final branchListModel = branchListModelFromJson(jsonString);

import 'dart:convert';

import 'branch_local_model.dart';

BranchListModel branchListModelFromJson(String str) =>
    BranchListModel.fromJson(json.decode(str));

String branchListModelToJson(BranchListModel data) =>
    json.encode(data.toJson());

class BranchListModel {
  final int? status;
  final String? msg;
  final List<Datum>? data;

  BranchListModel({
    this.status,
    this.msg,
    this.data,
  });

  factory BranchListModel.fromJson(Map<String, dynamic> json) =>
      BranchListModel(
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
  final String? sid;
  final String? name;

  Datum({
    this.sid,
    this.name,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        sid: json["sid"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "sid": sid,
        "name": name,
      };


  BranchModel toLocalObj(){
    return BranchModel(
      this.sid,
        name: this.name
    );
  }
}
