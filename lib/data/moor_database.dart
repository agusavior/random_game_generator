import 'package:moor/moor.dart';

// Use: flutter packages pub run build_runner build
// To update (or generate) this file:
part 'moor_database.g.dart';

class Nodes extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();

  // IntColumn get seed => integer()();

  TextColumn get data => text()
      .withLength(min: 0, max: 50)
      .withDefault(Constant(""))();
  IntColumn get number => integer()();
  RealColumn get position => real()();
  IntColumn get timerCounter => integer().withDefault(Constant(0))();
  IntColumn get red => integer()();
  IntColumn get green => integer()();
  IntColumn get blue => integer()();
  //IntColumn get period => integer()();
  //IntColumn get backId => integer().withDefault(Constant(0))();
  //IntColumn get nextId => integer().withDefault(Constant(0))();
  //IntColumn get nrefs => integer().withDefault(Constant(0))();
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
  int get schemaVersion => 16;


  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        /*
        You should use this if the app on mobile isn't get uninstalled by the user
        AND at the same time, the schema changes.
        For instance:
        if (from == 10) {
          await m.addColumn(nodes, nodes.number);
        }
        */
      }
  );

  // Slots
  Future<List<Node>> getAllNodes() => select(nodes).get();
  Stream<List<Node>> watchAllNodes() => select(nodes).watch();
  Stream<List<Node>> watchAllNodesOrdered() {
    return (select(nodes)..orderBy([(t) => OrderingTerm(expression: t.position)])).watch();
  }
  Stream<Node> watchSingleNode() => select(nodes).watchSingle();
  Future<int> insertNode(NodesCompanion node) => into(nodes).insert(node);
  Future updateNode(Node node) => update(nodes).replace(node);
  Future deleteNode(Node node) => delete(nodes).delete(node);
  Future deleteAllNodes() => delete(nodes).go();

  Future<List<Node>> getListOfOneNode(int offset) {
    return (select(nodes)..limit(1, offset: offset)).get();
  }

  Future<List<Node>> getNodeById(int id) {
    return (select(nodes)..where((a) => a.id.equals(id))).get();
  }
}