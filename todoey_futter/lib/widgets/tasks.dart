import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_futter/widgets/task_tile.dart';

import '../model/task.dart';
import '../model/task_data.dart';

class TasksList extends StatefulWidget {
  TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
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
