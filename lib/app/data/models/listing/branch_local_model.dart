import 'package:realm/realm.dart';

part 'branch_local_model.g.dart';

@RealmModel()
class _BranchModel {
  @PrimaryKey()
  late String? sid;
  late String? name;
}


