import 'dart:async';

import 'package:first_flutter_app/data/construct/construct_db.dart';
import 'package:first_flutter_app/data/moor_database.dart';
import 'package:first_flutter_app/game/node_utils.dart';
import 'dart:math';

class Game {
  AppDatabase database = constructDb();
  Random rng = Random();
  // Para que coincida con los colores posibles.
  static const int MAX_INT = 1 << (6 * 4);
  Game() {
    Timer.periodic(Duration(milliseconds: 1000), (Timer t) => eachPeriod());
    /*
    List<Node> nodes = database.getAllNodes();

    if (nodes.isEmpty) {
      initialization();
    }*/
  }

  void initialization() {
    //database.insertNode(Node(id: 0, ))
  }

  void eachPeriod() async {
    List<Node> nodes = await database.getAllNodes();
    nodes.forEach((node) {
      int newTimerCounter = node.timerCounter + 1;
      database.updateNode(node.copyWith(timerCounter: newTimerCounter));
      if (newTimerCounter % node.getPeriod() == 0) {
        timerEffect(node);
      }
    });
  }

  Future<int> insert(int number, double position, int seed) {
    return database.insertNode(NodesCompanion.insert(number: number, position: position, red: 0, green: 0, blue: 0));
  }

  Future<Node> getAnyRandom() async {
    List<Node> nodes = await database.getAllNodes();
    return nodes[rng.nextInt(nodes.length)];
  }

  Future<Node> insertAndGet(int number, double position, int seed) async {
    int id = await insert(number, position, seed);
    List<Node> nodes = await database.getNodeById(id);
    if (nodes.isEmpty) {
      throw Error();
    } else {
      return nodes[0];
    }
  }

  Stream<List<Node>> watchAll() {
    return database.watchAllNodesOrdered();
  }

  Future<Node> watchById(int id) {
    return database.watchSingleNode().firstWhere((node) => node.id == id);
  }

  Future<void> pressEffect(Node node) async {
    
  }

  Future<void> swap(Node a, Node b) async {
    database.updateNode(a.copyWith(position: b.position));
    database.updateNode(b.copyWith(position: a.position));
  }

  Future<void> mergeEffect(Node fromNode, Node toNode) async {
    Random random = fromNode.getRandom("merge with ${toNode.number}");
    bool numbersAreTheSame = toNode.number == fromNode.number;

    // Basic. merge(n, m) => m += 1
    if (numbersAreTheSame) {
      database.updateNode(toNode.copyWith(number: toNode.number + 1));
      database.updateNode(fromNode.copyWith(number: 0));
    } else if (random.nextBool()) {
      // Increment/Decrement interaction

    } else {
      await swap(fromNode, toNode);
    }
  }

  Future<void> timerEffect(Node node) async {

  }

  void restart() {
    database.deleteAllNodes();

    for (double i = 0.0; i <= 1.0; i += 0.1) {
      insert(0, i, 0);
    }

    worldSeed = rng.nextInt(MAX_INT);
  }

  void onFloatingButton() async {
    Node nodeFrom = await insertAndGet(0, rng.nextDouble(), 0);
    Node nodeTo = await getAnyRandom();
    mergeEffect(nodeFrom, nodeTo);
    await database.deleteNode(nodeFrom);
    await database.deleteNode(nodeFrom);
    await database.deleteNode(nodeFrom);
  }

  static final instance = Game();
  static int worldSeed = 0;
}
