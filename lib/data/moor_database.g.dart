// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Node extends DataClass implements Insertable<Node> {
  final int id;
  final String data;
  final int number;
  final double position;
  final int timerCounter;
  final int red;
  final int green;
  final int blue;
  Node(
      {required this.id,
      required this.data,
      required this.number,
      required this.position,
      required this.timerCounter,
      required this.red,
      required this.green,
      required this.blue});
  factory Node.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Node(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      data: stringType.mapFromDatabaseResponse(data['${effectivePrefix}data'])!,
      number:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}number'])!,
      position: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}position'])!,
      timerCounter: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}timer_counter'])!,
      red: intType.mapFromDatabaseResponse(data['${effectivePrefix}red'])!,
      green: intType.mapFromDatabaseResponse(data['${effectivePrefix}green'])!,
      blue: intType.mapFromDatabaseResponse(data['${effectivePrefix}blue'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['data'] = Variable<String>(data);
    map['number'] = Variable<int>(number);
    map['position'] = Variable<double>(position);
    map['timer_counter'] = Variable<int>(timerCounter);
    map['red'] = Variable<int>(red);
    map['green'] = Variable<int>(green);
    map['blue'] = Variable<int>(blue);
    return map;
  }

  NodesCompanion toCompanion(bool nullToAbsent) {
    return NodesCompanion(
      id: Value(id),
      data: Value(data),
      number: Value(number),
      position: Value(position),
      timerCounter: Value(timerCounter),
      red: Value(red),
      green: Value(green),
      blue: Value(blue),
    );
  }

  factory Node.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Node(
      id: serializer.fromJson<int>(json['id']),
      data: serializer.fromJson<String>(json['data']),
      number: serializer.fromJson<int>(json['number']),
      position: serializer.fromJson<double>(json['position']),
      timerCounter: serializer.fromJson<int>(json['timerCounter']),
      red: serializer.fromJson<int>(json['red']),
      green: serializer.fromJson<int>(json['green']),
      blue: serializer.fromJson<int>(json['blue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'data': serializer.toJson<String>(data),
      'number': serializer.toJson<int>(number),
      'position': serializer.toJson<double>(position),
      'timerCounter': serializer.toJson<int>(timerCounter),
      'red': serializer.toJson<int>(red),
      'green': serializer.toJson<int>(green),
      'blue': serializer.toJson<int>(blue),
    };
  }

  Node copyWith(
          {int? id,
          String? data,
          int? number,
          double? position,
          int? timerCounter,
          int? red,
          int? green,
          int? blue}) =>
      Node(
        id: id ?? this.id,
        data: data ?? this.data,
        number: number ?? this.number,
        position: position ?? this.position,
        timerCounter: timerCounter ?? this.timerCounter,
        red: red ?? this.red,
        green: green ?? this.green,
        blue: blue ?? this.blue,
      );
  @override
  String toString() {
    return (StringBuffer('Node(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('number: $number, ')
          ..write('position: $position, ')
          ..write('timerCounter: $timerCounter, ')
          ..write('red: $red, ')
          ..write('green: $green, ')
          ..write('blue: $blue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          data.hashCode,
          $mrjc(
              number.hashCode,
              $mrjc(
                  position.hashCode,
                  $mrjc(
                      timerCounter.hashCode,
                      $mrjc(red.hashCode,
                          $mrjc(green.hashCode, blue.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Node &&
          other.id == this.id &&
          other.data == this.data &&
          other.number == this.number &&
          other.position == this.position &&
          other.timerCounter == this.timerCounter &&
          other.red == this.red &&
          other.green == this.green &&
          other.blue == this.blue);
}

class NodesCompanion extends UpdateCompanion<Node> {
  final Value<int> id;
  final Value<String> data;
  final Value<int> number;
  final Value<double> position;
  final Value<int> timerCounter;
  final Value<int> red;
  final Value<int> green;
  final Value<int> blue;
  const NodesCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.number = const Value.absent(),
    this.position = const Value.absent(),
    this.timerCounter = const Value.absent(),
    this.red = const Value.absent(),
    this.green = const Value.absent(),
    this.blue = const Value.absent(),
  });
  NodesCompanion.insert({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    required int number,
    required double position,
    this.timerCounter = const Value.absent(),
    required int red,
    required int green,
    required int blue,
  })   : number = Value(number),
        position = Value(position),
        red = Value(red),
        green = Value(green),
        blue = Value(blue);
  static Insertable<Node> custom({
    Expression<int>? id,
    Expression<String>? data,
    Expression<int>? number,
    Expression<double>? position,
    Expression<int>? timerCounter,
    Expression<int>? red,
    Expression<int>? green,
    Expression<int>? blue,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (number != null) 'number': number,
      if (position != null) 'position': position,
      if (timerCounter != null) 'timer_counter': timerCounter,
      if (red != null) 'red': red,
      if (green != null) 'green': green,
      if (blue != null) 'blue': blue,
    });
  }

  NodesCompanion copyWith(
      {Value<int>? id,
      Value<String>? data,
      Value<int>? number,
      Value<double>? position,
      Value<int>? timerCounter,
      Value<int>? red,
      Value<int>? green,
      Value<int>? blue}) {
    return NodesCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      number: number ?? this.number,
      position: position ?? this.position,
      timerCounter: timerCounter ?? this.timerCounter,
      red: red ?? this.red,
      green: green ?? this.green,
      blue: blue ?? this.blue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (position.present) {
      map['position'] = Variable<double>(position.value);
    }
    if (timerCounter.present) {
      map['timer_counter'] = Variable<int>(timerCounter.value);
    }
    if (red.present) {
      map['red'] = Variable<int>(red.value);
    }
    if (green.present) {
      map['green'] = Variable<int>(green.value);
    }
    if (blue.present) {
      map['blue'] = Variable<int>(blue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NodesCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('number: $number, ')
          ..write('position: $position, ')
          ..write('timerCounter: $timerCounter, ')
          ..write('red: $red, ')
          ..write('green: $green, ')
          ..write('blue: $blue')
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

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedTextColumn data = _constructData();
  GeneratedTextColumn _constructData() {
    return GeneratedTextColumn('data', $tableName, false,
        minTextLength: 0, maxTextLength: 50, defaultValue: Constant(""));
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

  final VerificationMeta _positionMeta = const VerificationMeta('position');
  @override
  late final GeneratedRealColumn position = _constructPosition();
  GeneratedRealColumn _constructPosition() {
    return GeneratedRealColumn(
      'position',
      $tableName,
      false,
    );
  }

  final VerificationMeta _timerCounterMeta =
      const VerificationMeta('timerCounter');
  @override
  late final GeneratedIntColumn timerCounter = _constructTimerCounter();
  GeneratedIntColumn _constructTimerCounter() {
    return GeneratedIntColumn('timer_counter', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _redMeta = const VerificationMeta('red');
  @override
  late final GeneratedIntColumn red = _constructRed();
  GeneratedIntColumn _constructRed() {
    return GeneratedIntColumn(
      'red',
      $tableName,
      false,
    );
  }

  final VerificationMeta _greenMeta = const VerificationMeta('green');
  @override
  late final GeneratedIntColumn green = _constructGreen();
  GeneratedIntColumn _constructGreen() {
    return GeneratedIntColumn(
      'green',
      $tableName,
      false,
    );
  }

  final VerificationMeta _blueMeta = const VerificationMeta('blue');
  @override
  late final GeneratedIntColumn blue = _constructBlue();
  GeneratedIntColumn _constructBlue() {
    return GeneratedIntColumn(
      'blue',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, data, number, position, timerCounter, red, green, blue];
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
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('timer_counter')) {
      context.handle(
          _timerCounterMeta,
          timerCounter.isAcceptableOrUnknown(
              data['timer_counter']!, _timerCounterMeta));
    }
    if (data.containsKey('red')) {
      context.handle(
          _redMeta, red.isAcceptableOrUnknown(data['red']!, _redMeta));
    } else if (isInserting) {
      context.missing(_redMeta);
    }
    if (data.containsKey('green')) {
      context.handle(
          _greenMeta, green.isAcceptableOrUnknown(data['green']!, _greenMeta));
    } else if (isInserting) {
      context.missing(_greenMeta);
    }
    if (data.containsKey('blue')) {
      context.handle(
          _blueMeta, blue.isAcceptableOrUnknown(data['blue']!, _blueMeta));
    } else if (isInserting) {
      context.missing(_blueMeta);
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
