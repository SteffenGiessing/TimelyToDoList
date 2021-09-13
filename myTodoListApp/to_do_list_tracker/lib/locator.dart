import 'package:get_it/get_it.dart';
import 'package:to_do_list_tracker/taskController.dart';
final locator = GetIt.instance;

void SetupServices() {
  locator.registerSingleton<TaskController>(TaskController());
}
