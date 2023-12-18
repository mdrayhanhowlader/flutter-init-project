import 'dart:convert';

import 'package:hive/hive.dart';

part 'login_model.g.dart';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String? loginModelToJson(LoginModel data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class LoginModel extends HiveObject {
    LoginModel({
        this.userId,
        this.userSid,
        this.userImage,
        this.userName,
        this.userHp,
        this.userIc,
        this.userAddr,
        this.userMel,
        this.schName,
        this.schAddr,
        this.userServerid,
        this.userJob,
        this.userJobstatus,
        this.userJobdiv,
        this.userJobstart,
        this.userJobend,
        this.systemAccess,
        this.systemConfig,
        this.bosConfig,
    });

    @HiveField(0)
    String? userId;

    @HiveField(1)
    int? userSid;

    @HiveField(2)
    String? userImage;

    @HiveField(3)
    String? userName;

    @HiveField(4)
    String? userHp;

    @HiveField(5)
    String? userIc;

    @HiveField(6)
    String? userAddr;

    @HiveField(7)
    String? userMel;

    @HiveField(8)
    String? schName;

    @HiveField(9)
    String? schAddr;

    @HiveField(10)
    String? userServerid;

    @HiveField(11)
    String? userJob;

    @HiveField(12)
    String? userJobstatus;

    @HiveField(13)
    String? userJobdiv;

    @HiveField(14)
    String? userJobstart;

    @HiveField(15)
    String? userJobend;

    @HiveField(16)
    String? systemAccess;

    @HiveField(17)
    String? systemConfig;

    @HiveField(18)
    String? bosConfig;

    factory LoginModel.fromJson(Map<String?, dynamic> json) => LoginModel(
        userId: json["user_id"],
        userSid: json["user_sid"],
        userImage: json["user_image"],
        userName: json["user_name"],
        userHp: json["user_hp"],
        userIc: json["user_ic"],
        userAddr: json["user_addr"],
        userMel: json["user_mel"],
        schName: json["sch_name"],
        schAddr: json["sch_addr"],
        userServerid: json["user_serverid"],
        userJob: json["user_job"],
        userJobstatus: json["user_jobstatus"],
        userJobdiv: json["user_jobdiv"],
        userJobstart: json["user_jobstart"],
        userJobend: json["user_jobend"],
        systemAccess: json["system_access"],
        systemConfig: json["system_config"],
        bosConfig: json["bos_config"],
    );

    Map<String?, dynamic> toJson() => {
        "user_id": userId,
        "user_sid": userSid,
        "user_image": userImage,
        "user_name": userName,
        "user_hp": userHp,
        "user_ic": userIc,
        "user_addr": userAddr,
        "user_mel": userMel,
        "sch_name": schName,
        "sch_addr": schAddr,
        "user_serverid": userServerid,
        "user_job": userJob,
        "user_jobstatus": userJobstatus,
        "user_jobdiv": userJobdiv,
        "user_jobstart": userJobstart,
        "user_jobend": userJobend,
        "system_access": systemAccess,
        "system_config": systemConfig,
        "bos_config": bosConfig,
    };
}
