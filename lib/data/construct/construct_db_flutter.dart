import 'package:moor_flutter/moor_flutter.dart';

import '../moor_database.dart';

AppDatabase constructDb2() {
  return AppDatabase(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));
}
