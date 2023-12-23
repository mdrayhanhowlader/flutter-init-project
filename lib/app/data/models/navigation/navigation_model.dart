// To parse this JSON data, do
//
//     final navigationModel = navigationModelFromJson(jsonString);

import 'dart:convert';

NavigationModel navigationModelFromJson(String str) =>
    NavigationModel.fromJson(json.decode(str));

String navigationModelToJson(NavigationModel data) =>
    json.encode(data.toJson());

class NavigationModel {
  final bool? status;
  final String? msg;
  final Data? data;

  NavigationModel({
    this.status,
    this.msg,
    this.data,
  });

  factory NavigationModel.fromJson(Map<String, dynamic> json) =>
      NavigationModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data?.toJson(),
      };
}

class Data {
  final String? idserver;
  final String? clientAppname;
  final String? clientAppengine;
  final String? clientSysengine;
  final String? clientUrl;
  final String? clientSid;
  final dynamic customer;
  final dynamic coordinate;
  final dynamic phone;
  final dynamic address;
  final String? logo;

  Data({
    this.idserver,
    this.clientAppname,
    this.clientAppengine,
    this.clientSysengine,
    this.clientUrl,
    this.clientSid,
    this.customer,
    this.coordinate,
    this.phone,
    this.address,
    this.logo,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        idserver: json["idserver"],
        clientAppname: json["client_appname"],
        clientAppengine: json["client_appengine"],
        clientSysengine: json["client_sysengine"],
        clientUrl: json["client_url"],
        clientSid: json["client_sid"],
        customer: json["customer"],
        coordinate: json["coordinate"],
        phone: json["phone"],
        address: json["address"],
        logo: json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "idserver": idserver,
        "client_appname": clientAppname,
        "client_appengine": clientAppengine,
        "client_sysengine": clientSysengine,
        "client_url": clientUrl,
        "client_sid": clientSid,
        "customer": customer,
        "coordinate": coordinate,
        "phone": phone,
        "address": address,
        "logo": logo,
      };
}
