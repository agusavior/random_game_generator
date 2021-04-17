import 'package:first_flutter_app/data/construct/construct_db.dart';
import 'package:first_flutter_app/data/moor_database.dart';

class Game {
  static const int LIMIT = 120;
  AppDatabase database = constructDb2();

  Game() {

    /*
    List<Node> nodes = database.getAllNodes();

    if (nodes.isEmpty) {
      initialization();
    }*/
  }

  void initialization() {
    //database.insertNode(Node(id: 0, ))
  }

  void insert(int number, String string) {
    database.insertNode(NodesCompanion.insert(number: number, name: string));
  }

  List<Node> resolve(List<Node> nodes) {
    if (nodes.isEmpty) return [];
    final Map<int, Node> map = Map();
    final List<Node> returnedList = [];
    nodes.forEach((e) { map[e.id] = e; });
    Node n = nodes[0]; // TODO
    for(int i = 0; i < LIMIT; i++) {
      returnedList.add(n);
      final nextNode = map[n.nextId];
      if (nextNode == null) return returnedList;
      n = nextNode;
    }
    return returnedList;
  }

  Stream<List<Node>> watchAll() {
    return database.watchAllNodes().map(resolve);
  }

  Future<Node> watchById(int id) {
    return database.watchSingleNode().firstWhere((node) => node.id == id);
  }

  static final instance = Game();
}
