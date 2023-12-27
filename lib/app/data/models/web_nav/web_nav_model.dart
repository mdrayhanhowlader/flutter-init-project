// To parse this JSON data, do
//
//     final navModel = navModelFromJson(jsonString);

import 'dart:convert';

NavModel navModelFromJson(String str) => NavModel.fromJson(json.decode(str));

String navModelToJson(NavModel data) => json.encode(data.toJson());

class NavModel {
  final List<Datum>? data;
  final bool? status;
  final String? msg;

  NavModel({
    this.data,
    this.status,
    this.msg,
  });

  factory NavModel.fromJson(Map<String, dynamic> json) => NavModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        status: json["status"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "status": status,
        "msg": msg,
      };
}

class Datum {
  final String? target;
  final String? optionmenu;
  final String? menuTit;
  final String? menuLink;
  final List<Datum>? menuSub;

  Datum({
    this.target,
    this.optionmenu,
    this.menuTit,
    this.menuLink,
    this.menuSub,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        target: json["target"],
        optionmenu: json["optionmenu"],
        menuTit: json["menu_tit"],
        menuLink: json["menu_link"],
        menuSub: json["menu_sub"] == null
            ? []
            : List<Datum>.from(json["menu_sub"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "target": target,
        "optionmenu": optionmenu,
        "menu_tit": menuTit,
        "menu_link": menuLink,
        "menu_sub": menuSub == null
            ? []
            : List<dynamic>.from(menuSub!.map((x) => x.toJson())),
      };
}
