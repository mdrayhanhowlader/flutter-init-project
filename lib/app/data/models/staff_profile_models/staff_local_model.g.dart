// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_local_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class StaffModel extends _StaffModel
    with RealmEntity, RealmObjectBase, RealmObject {
  StaffModel(
    String? uid, {
    int? id,
    String? sid,
    String? name,
    String? nick,
    String? ic,
    String? tel,
    String? hp,
    String? mel,
    String? addr,
    String? state,
    String? position,
    String? status,
    String? division,
    String? image,
  }) {
    RealmObjectBase.set(this, 'uid', uid);
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'sid', sid);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'nick', nick);
    RealmObjectBase.set(this, 'ic', ic);
    RealmObjectBase.set(this, 'tel', tel);
    RealmObjectBase.set(this, 'hp', hp);
    RealmObjectBase.set(this, 'mel', mel);
    RealmObjectBase.set(this, 'addr', addr);
    RealmObjectBase.set(this, 'state', state);
    RealmObjectBase.set(this, 'position', position);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'division', division);
    RealmObjectBase.set(this, 'image', image);
  }

  StaffModel._();

  @override
  String? get uid => RealmObjectBase.get<String>(this, 'uid') as String?;
  @override
  set uid(String? value) => RealmObjectBase.set(this, 'uid', value);

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get sid => RealmObjectBase.get<String>(this, 'sid') as String?;
  @override
  set sid(String? value) => RealmObjectBase.set(this, 'sid', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get nick => RealmObjectBase.get<String>(this, 'nick') as String?;
  @override
  set nick(String? value) => RealmObjectBase.set(this, 'nick', value);

  @override
  String? get ic => RealmObjectBase.get<String>(this, 'ic') as String?;
  @override
  set ic(String? value) => RealmObjectBase.set(this, 'ic', value);

  @override
  String? get tel => RealmObjectBase.get<String>(this, 'tel') as String?;
  @override
  set tel(String? value) => RealmObjectBase.set(this, 'tel', value);

  @override
  String? get hp => RealmObjectBase.get<String>(this, 'hp') as String?;
  @override
  set hp(String? value) => RealmObjectBase.set(this, 'hp', value);

  @override
  String? get mel => RealmObjectBase.get<String>(this, 'mel') as String?;
  @override
  set mel(String? value) => RealmObjectBase.set(this, 'mel', value);

  @override
  String? get addr => RealmObjectBase.get<String>(this, 'addr') as String?;
  @override
  set addr(String? value) => RealmObjectBase.set(this, 'addr', value);

  @override
  String? get state => RealmObjectBase.get<String>(this, 'state') as String?;
  @override
  set state(String? value) => RealmObjectBase.set(this, 'state', value);

  @override
  String? get position =>
      RealmObjectBase.get<String>(this, 'position') as String?;
  @override
  set position(String? value) => RealmObjectBase.set(this, 'position', value);

  @override
  String? get status => RealmObjectBase.get<String>(this, 'status') as String?;
  @override
  set status(String? value) => RealmObjectBase.set(this, 'status', value);

  @override
  String? get division =>
      RealmObjectBase.get<String>(this, 'division') as String?;
  @override
  set division(String? value) => RealmObjectBase.set(this, 'division', value);

  @override
  String? get image => RealmObjectBase.get<String>(this, 'image') as String?;
  @override
  set image(String? value) => RealmObjectBase.set(this, 'image', value);

  @override
  Stream<RealmObjectChanges<StaffModel>> get changes =>
      RealmObjectBase.getChanges<StaffModel>(this);

  @override
  StaffModel freeze() => RealmObjectBase.freezeObject<StaffModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(StaffModel._);
    return const SchemaObject(
        ObjectType.realmObject, StaffModel, 'StaffModel', [
      SchemaProperty('uid', RealmPropertyType.string,
          optional: true, primaryKey: true),
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('sid', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('nick', RealmPropertyType.string, optional: true),
      SchemaProperty('ic', RealmPropertyType.string, optional: true),
      SchemaProperty('tel', RealmPropertyType.string, optional: true),
      SchemaProperty('hp', RealmPropertyType.string, optional: true),
      SchemaProperty('mel', RealmPropertyType.string, optional: true),
      SchemaProperty('addr', RealmPropertyType.string, optional: true),
      SchemaProperty('state', RealmPropertyType.string, optional: true),
      SchemaProperty('position', RealmPropertyType.string, optional: true),
      SchemaProperty('status', RealmPropertyType.string, optional: true),
      SchemaProperty('division', RealmPropertyType.string, optional: true),
      SchemaProperty('image', RealmPropertyType.string, optional: true),
    ]);
  }
}
