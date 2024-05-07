import 'package:hive/hive.dart';
part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String tittle;

  @HiveField(1)
  final String subTittle;

  TaskModel({
    required this.tittle,
    required this.subTittle,
  });
}
