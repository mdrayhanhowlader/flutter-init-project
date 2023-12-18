import 'dart:convert';
import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/core/services/local_db_services/local_db_services.dart';
import 'package:cms/app/data/constants/endpoints_constant.dart';
import 'package:cms/app/data/models/staff_information_models/staff_information_model.dart';
import 'package:dio/dio.dart' as dio;

class StaffInfoRepository {
  final localDB = LocalDBService();
  final api = APIService();

  Future<StaffInformationModel?> getStaffInfo(
      {required String userId, required String userSid}) async {
    try {
      print('_uid: ${userId}, _sid: ${userSid}');
      dio.Response response = await api.get(
          endpoint: EndpointConstant.staffInfo +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              userSid + // API Problem Solved
              '&uid=' +
              userId);

      final staffInformationModel =
          staffInformationModelFromJson(jsonEncode(response.data));
      return staffInformationModel;
    } catch (e) {
      throw Exception(e);
    }
  }
}
