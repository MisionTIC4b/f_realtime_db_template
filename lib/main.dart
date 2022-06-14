import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:misiontic_todo/ui/controllers/database.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:misiontic_todo/ui/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: Inicializa Firebase usando el archivo de opciones creado por flutterfire
  Get.put(DatabaseController());
  runApp(const ToDoApp());
}
