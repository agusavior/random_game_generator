import 'package:moor_flutter/moor_flutter.dart';

import '../moor_database.dart';

AppDatabase constructDb() {
  print("Using Flutter database...");
  return AppDatabase(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));
}
