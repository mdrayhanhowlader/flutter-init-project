// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final String? totalrecord;
  final String? currentpage;
  final int? totalpage;
  final bool? status;
  final String? msg;
  final List<Datum>? data;

  UserModel({
    this.totalrecord,
    this.currentpage,
    this.totalpage,
    this.status,
    this.msg,
    this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        totalrecord: json["totalrecord"],
        currentpage: json["currentpage"],
        totalpage: json["totalpage"],
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalrecord": totalrecord,
        "currentpage": currentpage,
        "totalpage": totalpage,
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final int? contentSliderview;
  final String? contentTit;
  final dynamic contentSubtitle;
  final String? contentId;
  final String? contentTm;
  final DateTime? contentDt;
  final String? contentMsg;
  final String? contentFile1;
  final String? contentFile2;
  final String? contentFile3;

  Datum({
    this.contentSliderview,
    this.contentTit,
    this.contentSubtitle,
    this.contentId,
    this.contentTm,
    this.contentDt,
    this.contentMsg,
    this.contentFile1,
    this.contentFile2,
    this.contentFile3,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        contentSliderview: json["content_sliderview"],
        contentTit: json["content_tit"],
        contentSubtitle: json["content_subtitle"],
        contentId: json["content_id"],
        contentTm: json["content_tm"],
        contentDt: json["content_dt"] == null
            ? null
            : DateTime.parse(json["content_dt"]),
        contentMsg: json["content_msg"],
        contentFile1: json["content_file1"],
        contentFile2: json["content_file2"],
        contentFile3: json["content_file3"],
      );

  Map<String, dynamic> toJson() => {
        "content_sliderview": contentSliderview,
        "content_tit": contentTit,
        "content_subtitle": contentSubtitle,
        "content_id": contentId,
        "content_tm": contentTm,
        "content_dt":
            "${contentDt!.year.toString().padLeft(4, '0')}-${contentDt!.month.toString().padLeft(2, '0')}-${contentDt!.day.toString().padLeft(2, '0')}",
        "content_msg": contentMsg,
        "content_file1": contentFile1,
        "content_file2": contentFile2,
        "content_file3": contentFile3,
      };
}
