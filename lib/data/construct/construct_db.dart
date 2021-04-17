// Conditional import
// Read:
// https://medium.com/flutter-community/conditional-imports-across-flutter-and-web-4b88885a886e
// And:
// https://dart.dev/guides/libraries/create-library-packages
export 'construct_db_stub.dart'
  if (dart.library.io) 'construct_db_flutter.dart'
  if (dart.library.js) 'construct_db_web.dart';
