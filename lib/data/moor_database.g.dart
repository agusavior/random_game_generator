// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Node extends DataClass implements Insertable<Node> {
  final int id;
  final String name;
  final int number;
  final int backId;
  final int nextId;
  final int nrefs;
  Node(
      {required this.id,
      required this.name,
      required this.number,
      required this.backId,
      required this.nextId,
      required this.nrefs});
  factory Node.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Node(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      number:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}number'])!,
      backId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}back_id'])!,
      nextId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}next_id'])!,
      nrefs: intType.mapFromDatabaseResponse(data['${effectivePrefix}nrefs'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['number'] = Variable<int>(number);
    map['back_id'] = Variable<int>(backId);
    map['next_id'] = Variable<int>(nextId);
    map['nrefs'] = Variable<int>(nrefs);
    return map;
  }

  NodesCompanion toCompanion(bool nullToAbsent) {
    return NodesCompanion(
      id: Value(id),
      name: Value(name),
      number: Value(number),
      backId: Value(backId),
      nextId: Value(nextId),
      nrefs: Value(nrefs),
    );
  }

  factory Node.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Node(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      number: serializer.fromJson<int>(json['number']),
      backId: serializer.fromJson<int>(json['backId']),
      nextId: serializer.fromJson<int>(json['nextId']),
      nrefs: serializer.fromJson<int>(json['nrefs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'number': serializer.toJson<int>(number),
      'backId': serializer.toJson<int>(backId),
      'nextId': serializer.toJson<int>(nextId),
      'nrefs': serializer.toJson<int>(nrefs),
    };
  }

  Node copyWith(
          {int? id,
          String? name,
          int? number,
          int? backId,
          int? nextId,
          int? nrefs}) =>
      Node(
        id: id ?? this.id,
        name: name ?? this.name,
        number: number ?? this.number,
        backId: backId ?? this.backId,
        nextId: nextId ?? this.nextId,
        nrefs: nrefs ?? this.nrefs,
      );
  @override
  String toString() {
    return (StringBuffer('Node(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('number: $number, ')
          ..write('backId: $backId, ')
          ..write('nextId: $nextId, ')
          ..write('nrefs: $nrefs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              number.hashCode,
              $mrjc(
                  backId.hashCode, $mrjc(nextId.hashCode, nrefs.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Node &&
          other.id == this.id &&
          other.name == this.name &&
          other.number == this.number &&
          other.backId == this.backId &&
          other.nextId == this.nextId &&
          other.nrefs == this.nrefs);
}

class NodesCompanion extends UpdateCompanion<Node> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> number;
  final Value<int> backId;
  final Value<int> nextId;
  final Value<int> nrefs;
  const NodesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.number = const Value.absent(),
    this.backId = const Value.absent(),
    this.nextId = const Value.absent(),
    this.nrefs = const Value.absent(),
  });
  NodesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int number,
    this.backId = const Value.absent(),
    this.nextId = const Value.absent(),
    this.nrefs = const Value.absent(),
  })  : name = Value(name),
        number = Value(number);
  static Insertable<Node> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? number,
    Expression<int>? backId,
    Expression<int>? nextId,
    Expression<int>? nrefs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (number != null) 'number': number,
      if (backId != null) 'back_id': backId,
      if (nextId != null) 'next_id': nextId,
      if (nrefs != null) 'nrefs': nrefs,
    });
  }

  NodesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? number,
      Value<int>? backId,
      Value<int>? nextId,
      Value<int>? nrefs}) {
    return NodesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
      backId: backId ?? this.backId,
      nextId: nextId ?? this.nextId,
      nrefs: nrefs ?? this.nrefs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (backId.present) {
      map['back_id'] = Variable<int>(backId.value);
    }
    if (nextId.present) {
      map['next_id'] = Variable<int>(nextId.value);
    }
    if (nrefs.present) {
      map['nrefs'] = Variable<int>(nrefs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NodesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('number: $number, ')
          ..write('backId: $backId, ')
          ..write('nextId: $nextId, ')
          ..write('nrefs: $nrefs')
          ..write(')'))
        .toString();
  }
}

class $NodesTable extends Nodes with TableInfo<$NodesTable, Node> {
  final GeneratedDatabase _db;
  final String? _alias;
  $NodesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedIntColumn number = _constructNumber();
  GeneratedIntColumn _constructNumber() {
    return GeneratedIntColumn(
      'number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _backIdMeta = const VerificationMeta('backId');
  @override
  late final GeneratedIntColumn backId = _constructBackId();
  GeneratedIntColumn _constructBackId() {
    return GeneratedIntColumn('back_id', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _nextIdMeta = const VerificationMeta('nextId');
  @override
  late final GeneratedIntColumn nextId = _constructNextId();
  GeneratedIntColumn _constructNextId() {
    return GeneratedIntColumn('next_id', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _nrefsMeta = const VerificationMeta('nrefs');
  @override
  late final GeneratedIntColumn nrefs = _constructNrefs();
  GeneratedIntColumn _constructNrefs() {
    return GeneratedIntColumn('nrefs', $tableName, false,
        defaultValue: Constant(0));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, number, backId, nextId, nrefs];
  @override
  $NodesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'nodes';
  @override
  final String actualTableName = 'nodes';
  @override
  VerificationContext validateIntegrity(Insertable<Node> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('back_id')) {
      context.handle(_backIdMeta,
          backId.isAcceptableOrUnknown(data['back_id']!, _backIdMeta));
    }
    if (data.containsKey('next_id')) {
      context.handle(_nextIdMeta,
          nextId.isAcceptableOrUnknown(data['next_id']!, _nextIdMeta));
    }
    if (data.containsKey('nrefs')) {
      context.handle(
          _nrefsMeta, nrefs.isAcceptableOrUnknown(data['nrefs']!, _nrefsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Node map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Node.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NodesTable createAlias(String alias) {
    return $NodesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NodesTable nodes = $NodesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nodes];
}
