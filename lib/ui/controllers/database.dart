import 'package:get/get.dart';
import 'package:mintic_un_todo_core/domain/models/to_do.dart';
import 'package:misiontic_todo/domain/use_cases/database_manager.dart';

class DatabaseController extends GetxController {
  List<ToDo> toDos = [];

  Stream<List<ToDo>> get toDoStream => DatabaseManager.toDoStream;

  Future<void> deleteToDo({required String uuid}) async {
    await DatabaseManager.delete(uuid: uuid);
  }

  Future<void> saveToDo({required ToDo data}) async {
    await DatabaseManager.save(data: data);
  }

  Future<ToDo> readToDo({required String uuid}) async {
    return await DatabaseManager.read(uuid: uuid);
  }

  Future<List<ToDo>> readAll() async {
    return await DatabaseManager.readAll();
  }

  Future<void> clear() async {
    await DatabaseManager.clear();
  }

  Future<void> updateToDo({required ToDo data}) async {
    await DatabaseManager.update(data: data);
  }
}
