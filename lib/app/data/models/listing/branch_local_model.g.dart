// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_local_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class BranchModel extends _BranchModel
    with RealmEntity, RealmObjectBase, RealmObject {
  BranchModel(
    String? sid, {
    String? name,
  }) {
    RealmObjectBase.set(this, 'sid', sid);
    RealmObjectBase.set(this, 'name', name);
  }

  BranchModel._();

  @override
  String? get sid => RealmObjectBase.get<String>(this, 'sid') as String?;
  @override
  set sid(String? value) => RealmObjectBase.set(this, 'sid', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<BranchModel>> get changes =>
      RealmObjectBase.getChanges<BranchModel>(this);

  @override
  BranchModel freeze() => RealmObjectBase.freezeObject<BranchModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(BranchModel._);
    return const SchemaObject(
        ObjectType.realmObject, BranchModel, 'BranchModel', [
      SchemaProperty('sid', RealmPropertyType.string,
          optional: true, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
    ]);
  }
}
