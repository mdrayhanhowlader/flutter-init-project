import 'dart:convert';
import 'package:cms/app/data/models/listing/branch_list_model.dart';
import 'package:cms/app/data/models/listing/branch_local_model.dart';
import 'package:cms/app/data/models/listing/division_list_model.dart';
import 'package:cms/app/data/models/listing/gender_list_model.dart';
import 'package:cms/app/data/models/listing/nationality_list_model.dart';
import 'package:cms/app/data/models/listing/occupation_list_model.dart';
import 'package:cms/app/data/models/listing/race_list_model.dart';
import 'package:cms/app/data/models/listing/religion_list_model.dart';
import 'package:cms/app/data/models/listing/state_list_model.dart';
import 'package:cms/app/data/models/listing/system_level_model.dart';
import 'package:get/get.dart';

import '../../../core/services/http_services/http_services.dart';
import '../../../core/services/local_db_services/db_manager.dart';
import '../../../core/services/local_db_services/local_db_services.dart';
import 'package:dio/dio.dart' as dio;
import '../../constants/endpoints_constant.dart';
import '../../models/listing/qualification_list_model.dart';
import '../../models/listing/status_list_model.dart';

class Listing {
  final localDB = LocalDBService();
  final serviceAPI = APIService();
  final dbManager = Get.find<DBManager>();

  Future<SystemLevelModel> getSystemLevelAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.systemLevel +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final systemLevelModel =
          systemLevelModelFromJson(jsonEncode(response.data));
      return systemLevelModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<bool> getBranchListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.branchList +
              localDB.getLoginData()!.userServerid.toString());
      final branchListModel =
          branchListModelFromJson(jsonEncode(response.data));
      List<BranchModel> arrBranch = List<BranchModel>.from(
          branchListModel.data!.map((x) => x.toLocalObj()));
      arrBranch.insert(0, BranchModel('9999', name: 'ALL'));
      dbManager.addBranchArr(arrBranch);
      // if (localDB.getLoginData()!.userServerid.toString() == '0') {
      //   List<BranchModel> arrBranch = List<BranchModel>.from(
      //       branchListModel.data!.map((x) => x.toLocalObj()));
      //   arrBranch.insert(0, BranchModel('9999', name: 'ALL'));
      //   dbManager.addBranchArr(arrBranch);
      // } else {
      //   List<BranchModel> arrBranch = List<BranchModel>.from(
      //       branchListModel.data!.where((x) =>
      //           x.sid == localDB.getLoginData()!.userServerid.toString()));
      //   dbManager.addBranchArr(arrBranch);
      // }

      return true;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<RaceListModel> getRaceListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.raceList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final raceListModel = raceListModelFromJson(jsonEncode(response.data));
      return raceListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<GenderListModel> getGenderListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.genderList +
              localDB.getLoginData()!.userServerid.toString());
      final genderListModel =
          genderListModelFromJson(jsonEncode(response.data));
      return genderListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<ReligionListModel> getReligionListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.religionList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final religionListModel =
          religionListModelFromJson(jsonEncode(response.data));
      return religionListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  // STATE LIST
  Future<StateListModel> getStateListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.stateList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final stateListModel = stateListModelFromJson(jsonEncode(response.data));
      return stateListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  // NATIONALITY LIST
  Future<NationalityListModel> getNationalityListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.nationalityList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final nationalityListModel =
          nationalityListModelFromJson(jsonEncode(response.data));
      return nationalityListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  // QUALIFICATION LIST
  Future<QualificationListModel> getQualificationListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.qualificationList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final qualificationListModel =
          qualificationListModelFromJson(jsonEncode(response.data));
      return qualificationListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  // OCCUPATION LIST
  Future<OccupationListModel> getOccupationListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.occupationList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final occupationListModel =
          occupationListModelFromJson(jsonEncode(response.data));
      return occupationListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  // DIVISION LIST
  Future<DivisionListModel> getDivisionListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.divisionList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final divisionListModel =
          divisionListModelFromJson(jsonEncode(response.data));
      return divisionListModel;
    } catch (error) {
      throw Exception(error);
    }
  }

  // STATUS LIST
  Future<StatusListModel> getStatusListAPI() async {
    try {
      dio.Response response = await serviceAPI.get(
          endpoint: EndpointConstant.statusList +
              localDB.getLoginData()!.userServerid.toString() +
              '&sid=' +
              localDB.getLoginData()!.userSid.toString());
      final statusListModel =
          statusListModelFromJson(jsonEncode(response.data));
      return statusListModel;
    } catch (error) {
      throw Exception(error);
    }
  }
}
