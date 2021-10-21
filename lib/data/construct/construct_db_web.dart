import 'package:moor/moor_web.dart';

import '../moor_database.dart';

AppDatabase constructDb() {
  print("Using Web database...");
  return AppDatabase(WebDatabase('db'));
}