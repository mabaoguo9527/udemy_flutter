import 'package:flutter/cupertino.dart';
import 'package:todoey_futter/widgets/task_tile.dart';

import '../model/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({super.key, required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

//(
//       children: tasks.map((task) {
//         return TaskTile(
//             isChecked: task.isDone,
//             taskTitle: task.name,
//             toggleCheckboxState: (value) {
//               // 在这里处理复选框状态的变化
//               task.isDone = !task.isDone; // 更新任务的状态
//             });
//       }).toList(),
//     )
