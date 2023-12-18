// To parse this JSON data, do
//
//     final appcodeModel = appcodeModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'dart:convert';

part 'appcode_model.g.dart';

AppcodeModel appcodeModelFromJson(String str) => AppcodeModel.fromJson(json.decode(str));

String appcodeModelToJson(AppcodeModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class AppcodeModel {
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

    AppcodeModel({
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
    });

    factory AppcodeModel.fromJson(Map<String, dynamic> json) => AppcodeModel(
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
    };
}
