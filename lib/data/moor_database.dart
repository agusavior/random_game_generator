import 'package:moor/moor.dart';

// Use: flutter packages pub run build_runner build
// To update (or generate) this file:
part 'moor_database.g.dart';

class Nodes extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  IntColumn get number => integer()();
  IntColumn get backId => integer().withDefault(Constant(0))();
  IntColumn get nextId => integer().withDefault(Constant(0))();
  IntColumn get nrefs => integer().withDefault(Constant(0))();
}

// Maybe you'll need to run:
// flutter packages pub run build_runner watch
// or, for one time:
// flutter packages pub run build_runner build
// Read: https://moor.simonbinder.eu/docs/getting-started/
@UseMoor(tables: [Nodes])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);
  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 6;

  // Slots
  Future<List<Node>> getAllNodes() => select(nodes).get();
  Stream<List<Node>> watchAllNodes() => select(nodes).watch();
  Stream<Node> watchSingleNode() => select(nodes).watchSingle();
  Future insertNode(NodesCompanion node) => into(nodes).insert(node);
  Future updateNode(Node node) => update(nodes).replace(node);
  Future deleteNode(Node node) => delete(nodes).delete(node);
}