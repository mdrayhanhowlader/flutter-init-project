// // To parse this JSON data, do
// //
// // final userModel = userModelFromJson(jsonString);

// import 'dart:convert';

// UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

// String userModelToJson(UserModel data) => json.encode(data.toJson());

// class UserModel {
//   final String? totalrecord;
//   final String? currentpage;
//   final int? totalpage;
//   final bool? status;
//   final String? msg;
//   final List<Datum>? data;

//   UserModel({
//     this.totalrecord,
//     this.currentpage,
//     this.totalpage,
//     this.status,
//     this.msg,
//     this.data,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         totalrecord: json["totalrecord"],
//         currentpage: json["currentpage"],
//         totalpage: json["totalpage"],
//         status: json["status"],
//         msg: json["msg"],
//         data: json["data"] == null
//             ? []
//             : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "totalrecord": totalrecord,
//         "currentpage": currentpage,
//         "totalpage": totalpage,
//         "status": status,
//         "msg": msg,
//         "data": data == null
//             ? []
//             : List<dynamic>.from(data!.map((x) => x.toJson())),
//       };
// }

// class Datum {
//   final int? contentSliderview;
//   final String? contentTit;
//   final dynamic contentSubtitle;
//   final String? contentId;
//   final String? contentTm;
//   final DateTime? contentDt;
//   final String? contentMsg;
//   final String? contentFile1;
//   final String? contentFile2;
//   final String? contentFile3;

//   Datum({
//     this.contentSliderview,
//     this.contentTit,
//     this.contentSubtitle,
//     this.contentId,
//     this.contentTm,
//     this.contentDt,
//     this.contentMsg,
//     this.contentFile1,
//     this.contentFile2,
//     this.contentFile3,
//   });

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         contentSliderview: json["content_sliderview"],
//         contentTit: json["content_tit"],
//         contentSubtitle: json["content_subtitle"],
//         contentId: json["content_id"],
//         contentTm: json["content_tm"],
//         contentDt: json["content_dt"] == null
//             ? null
//             : DateTime.parse(json["content_dt"]),
//         contentMsg: json["content_msg"],
//         contentFile1: json["content_file1"],
//         contentFile2: json["content_file2"],
//         contentFile3: json["content_file3"],
//       );

//   Map<String, dynamic> toJson() => {
//         "content_sliderview": contentSliderview,
//         "content_tit": contentTit,
//         "content_subtitle": contentSubtitle,
//         "content_id": contentId,
//         "content_tm": contentTm,
//         "content_dt":
//             "${contentDt!.year.toString().padLeft(4, '0')}-${contentDt!.month.toString().padLeft(2, '0')}-${contentDt!.day.toString().padLeft(2, '0')}",
//         "content_msg": contentMsg,
//         "content_file1": contentFile1,
//         "content_file2": contentFile2,
//         "content_file3": contentFile3,
//       };
// }

// To parse this JSON data, do

// final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final bool? success;
  final String? message;
  final Data? data;

  UserModel({
    this.success,
    this.message,
    this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  final String? encryptedKey;
  final String? serverId;
  final String? sid;
  final String? clientAppname;
  final String? clientAppengine;
  final String? clientTel;
  final String? clientRegno;
  final String? clientAddress;
  final String? clientPostcode;
  final String? clientDistrict;
  final String? clientState;
  final String? customer;
  final String? clientLogo;
  final String? appConfig;
  final String? url;

  Data({
    this.encryptedKey,
    this.serverId,
    this.sid,
    this.clientAppname,
    this.clientAppengine,
    this.clientTel,
    this.clientRegno,
    this.clientAddress,
    this.clientPostcode,
    this.clientDistrict,
    this.clientState,
    this.customer,
    this.clientLogo,
    this.appConfig,
    this.url,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        encryptedKey: json["encrypted_key"],
        serverId: json["server_id"],
        sid: json["sid"],
        clientAppname: json["client_appname"],
        clientAppengine: json["client_appengine"],
        clientTel: json["client_tel"],
        clientRegno: json["client_regno"],
        clientAddress: json["client_address"],
        clientPostcode: json["client_postcode"],
        clientDistrict: json["client_district"],
        clientState: json["client_state"],
        customer: json["customer"],
        clientLogo: json["client_logo"],
        appConfig: json["app_config"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "encrypted_key": encryptedKey,
        "server_id": serverId,
        "sid": sid,
        "client_appname": clientAppname,
        "client_appengine": clientAppengine,
        "client_tel": clientTel,
        "client_regno": clientRegno,
        "client_address": clientAddress,
        "client_postcode": clientPostcode,
        "client_district": clientDistrict,
        "client_state": clientState,
        "customer": customer,
        "client_logo": clientLogo,
        "app_config": appConfig,
        "url": url,
      };
}
