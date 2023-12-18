import 'dart:convert';
import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/core/services/local_db_services/local_db_services.dart';
import 'package:cms/app/data/constants/endpoints_constant.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../../core/services/local_db_services/db_manager.dart';
import '../../models/staff_profile_models/list_staff_models.dart';
import '../../models/staff_profile_models/staff_local_model.dart';

class ListStaffRepository {
  final localDB = LocalDBService();
  final api = APIService();
  final dbManager = Get.find<DBManager>();

  Future<ListStaffModel?> getListStaff({
    int? page,
    String? searchText,
    String? currentSid,
  }) async {
    try {
      Map<String, dynamic> myMap = {
        "idserver": localDB.getLoginData()!.userServerid.toString(),
        "sid": currentSid ?? 'ALL',
        // "row_limit": 15,
        // "page_number": page ?? 1,
        // "filter": searchText,
        // "get_excel": true,
        // "job_division": "",
        // "job_position": "",
        // "job_status": "",
        // "gender": "",
        // "delete_user": null,
        // "inactive_user": null,
      };
      myMap.removeWhere((key, value) => value == null || value == '');
      dio.Response response = await api.post(
        EndpointConstant.listStaff,
        myMap,
      );
      final listStaffModel = listStaffModelFromJson(jsonEncode(response.data));

      List<StaffModel> arrStaff = List<StaffModel>.from(
          listStaffModel.data!.map((x) => x.toLocalObj()));

      dbManager.addStaffArr(arrStaff);

      return listStaffModel;
    } catch (e) {
      throw Exception(e);
    }
  }
}
