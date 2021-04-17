import 'package:moor/moor_web.dart';

import '../moor_database.dart';

AppDatabase constructDb2() {
  return AppDatabase(WebDatabase('db'));
}