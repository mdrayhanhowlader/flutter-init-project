import 'package:realm/realm.dart';

part 'staff_local_model.g.dart';

@RealmModel()
class _StaffModel {
  @PrimaryKey()
  late String? uid;
  late int? id;
  late String? sid;
  late String? name;
  late String? nick;
  late String? ic;
  late String? tel;
  late String? hp;
  late String? mel;
  late String? addr;
  late String? state;
  late String? position;
  late String? status;
  late String? division;
  late String? image;
}


