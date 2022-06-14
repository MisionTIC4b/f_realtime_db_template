import 'package:firebase_database/firebase_database.dart';
import 'package:mintic_un_todo_core/data/entities/to_do.dart';
import 'package:mintic_un_todo_core/domain/models/to_do.dart';

class RealTimeDatabase {
  // ToDoEntity: Entidad del modelo ToDo - .fromRecord(): convierte un Map a un ToDo;

  DatabaseReference get database => // Crea una referencia a 'to-do_list';

  Stream<List<ToDo>> get toDoStream {
    // TODO: Modifica el stream (snapshot.value == lista de todos):
    return database.onValue.map((event) {
      if (event.snapshot.value == null) {
        // TODO: 1. Si no hay datos retorna una lista vacia
      } else {
        final data = (event.snapshot.value as Map).cast<String, Map>();
        // TODO: 2. Usando ToDoEntity y .map() convierte los valores en data a ToDos
      }
    });
  }

  Future<void> delete({required String uuid}) async {
    // TODO: Usando database crea una referencia a uuid y remuevela.
  }

  Future<void> save({required ToDo data}) async {
    // TODO: Usando database crea una referencia a data.uuid y guarda data.record.
  }

  Future<ToDo> read({required String uuid}) async {
    // TODO: 1. Usando database crea una referencia a uuid y obten el snapshot.
    // TODO: 2. Usando el valor del snapshot conviertelo a un ToDo.
  }

  Future<List<ToDo>> readAll() async {
    // TODO: 1. Usando database obten el snapshot.
    if (snapshot.value == null) {
        // TODO: Si no hay datos retorna una lista vacia
    } else {
      final data = (snapshot.value as Map).cast<String, Map>();
      // TODO: Usando ToDoEntity y .map() convierte los valores en data a ToDos
    }
  }

  Future<void> clear() async {
    // TODO: Usando database elimina todos los datos.
  }

  Future<void> update({required ToDo data}) async {
    // TODO: Usando database, crea una referencia a data.uuid y guarda los datos;
  }
}
