// To parse this JSON data, do
//
//     final listStaffModel = listStaffModelFromJson(jsonString);

import 'dart:convert';

import 'package:cms/app/data/models/staff_profile_models/staff_local_model.dart';

ListStaffModel listStaffModelFromJson(String str) =>
    ListStaffModel.fromJson(json.decode(str));

String listStaffModelToJson(ListStaffModel data) => json.encode(data.toJson());

class ListStaffModel {
  final int? status;
  final String? msg;
  final int? totalStaff;
  final int? totalPage;
  final String? excelUrl;
  final List<StaffListData>? data;

  ListStaffModel({
    this.status,
    this.msg,
    this.totalStaff,
    this.totalPage,
    this.excelUrl,
    this.data,
  });

  factory ListStaffModel.fromJson(Map<String, dynamic> json) => ListStaffModel(
        status: json["status"],
        msg: json["msg"],
        totalStaff: json["total_staff"],
        totalPage: json["total_page"],
        excelUrl: json["excel_url"],
        data: json["data"] == null
            ? []
            : List<StaffListData>.from(
                json["data"]!.map((x) => StaffListData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "total_staff": totalStaff,
        "total_page": totalPage,
        "excel_url": excelUrl,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class StaffListData {
  final int? id;
  final String? uid;
  final String? sid;
  final String? name;
  final String? nick;
  final String? ic;
  final String? tel;
  final String? hp;
  final String? mel;
  final String? addr;
  final String? state;
  final String? position;
  final String? status;
  final String? division;
  final String? image;

  StaffListData({
    this.id,
    this.uid,
    this.sid,
    this.name,
    this.nick,
    this.ic,
    this.tel,
    this.hp,
    this.mel,
    this.addr,
    this.state,
    this.position,
    this.status,
    this.division,
    this.image,
  });

  factory StaffListData.fromJson(Map<String, dynamic> json) => StaffListData(
        id: json["id"],
        uid: json["uid"],
        sid: json["sid"],
        name: json["name"],
        nick: json["nick"],
        ic: json["ic"],
        tel: json["tel"],
        hp: json["hp"],
        mel: json["mel"],
        addr: json["addr"],
        state: json["state"],
        position: json["position"],
        status: json["status"],
        division: json["division"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "sid": sid,
        "name": name,
        "nick": nick,
        "ic": ic,
        "tel": tel,
        "hp": hp,
        "mel": mel,
        "addr": addr,
        "state": state,
        "position": position,
        "status": status,
        "division": division,
        "image": image,
      };

  StaffModel toLocalObj() {
    return StaffModel(
      this.uid,
      id: this.id,
      sid: this.sid,
      name: this.name,
      nick: this.nick,
      ic: this.ic,
      tel: this.tel,
      hp: this.hp,
      mel: this.mel,
      addr: this.addr,
      state: this.state,
      position: this.position,
      status: this.status,
      division: this.division,
      image: this.image,
    );
  }
}
