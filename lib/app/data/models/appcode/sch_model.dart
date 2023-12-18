import 'dart:convert';
import 'package:hive/hive.dart';

part 'sch_model.g.dart';

List<SchModel> schModelFromJson(String str) =>
    List<SchModel>.from(json.decode(str).map((x) => SchModel.fromJson(x)));

String schModelToJson(List<SchModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 0)
class SchModel extends HiveObject {
  @HiveField(0)
  String? idserver;
  @HiveField(1)
  String? sid;
  @HiveField(2)
  String? clientAppname;
  @HiveField(3)
  String? clientAppengine;
  @HiveField(4)
  String? clientTel;
  @HiveField(5)
  String? clientRegno;
  @HiveField(6)
  String? clientAddress;
  @HiveField(7)
  String? clientPostcode;
  @HiveField(8)
  String? clientDistrict;
  @HiveField(9)
  String? clientState;
  @HiveField(10)
  String? customer;
  @HiveField(11)
  String? clientLogo;
  @HiveField(12)
  String? logo;
  @HiveField(13)
  String? appConfig;
  @HiveField(14)
  String? url;
  @HiveField(15)
  String? username;
  @HiveField(16)
  String? password;

  SchModel({
    this.idserver,
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
    this.logo,
    this.appConfig,
    this.url,
    this.username,
    this.password,
  });

  factory SchModel.fromJson(Map<String, dynamic> json) => SchModel(
        idserver: json["idserver"],
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
        logo: json["logo"],
        appConfig: json["app_config"],
        url: json["url"],
        username: "",
        password: "",
      );

  Map<String, dynamic> toJson() => {
        "idserver": idserver,
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
        "logo": logo,
        "app_config": appConfig,
        "url": url,
        "username": username,
        "password": password,
      };
}
