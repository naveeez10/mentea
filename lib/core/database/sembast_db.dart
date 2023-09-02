import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast_io.dart';

class SembastDB {
  static final _sembastDB = SembastDB._();
  static late Database db;
  static bool _isInitialized = false;

  SembastDB._();
  factory SembastDB() {
    return _sembastDB;
  }

  static Future<String?> getAuthToken() async {
    final store = stringMapStoreFactory.store('auth_token');
    final snapshot = await store.record('auth_token').get(db);
    if (snapshot == null) {
      return null;
    }
    return snapshot['token'].toString();
  }

  static Future<void> setAuthToken(String token) async {
    final store = stringMapStoreFactory.store('auth_token');
    await store.record('auth_token').put(db, {'token': token});
  }

  static Future<void> initSembastDB() async {
    if (!_isInitialized) {
      final dir = await getApplicationDocumentsDirectory();
      await dir.create(recursive: true);
      final dbPath = join(dir.path, 'mentea.db');
      db = await databaseFactoryIo.openDatabase(dbPath);
      _isInitialized = true;
    }
  }
}
