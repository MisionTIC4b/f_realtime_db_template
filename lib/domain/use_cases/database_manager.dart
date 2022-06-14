import 'package:mintic_un_todo_core/domain/models/to_do.dart';
import 'package:misiontic_todo/data/repositories/database.dart';

abstract class DatabaseManager {
  static final RealTimeDatabase _database = RealTimeDatabase();

  static Stream<List<ToDo>> get toDoStream => _database.toDoStream;

  static Future<void> delete({required String uuid}) async {
    await _database.delete(uuid: uuid);
  }

  static Future<void> save({required ToDo data}) async {
    await _database.save(data: data);
  }

  static Future<ToDo> read({required String uuid}) async {
    return await _database.read(uuid: uuid);
  }

  static Future<List<ToDo>> readAll() async {
    return await _database.readAll();
  }

  static Future<void> clear() async {
    return _database.clear();
  }

  static Future<void> update({required ToDo data}) async {
    await _database.update(data: data);
  }
}
