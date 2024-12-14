import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_futter/model/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? newTaskTile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTile = value;
                  print(newTaskTile);
                },
              ),
              TextButton(
                onPressed: () {
                  // 按钮点击事件
                  //callback(newTaskTile);
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTile!);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // 内边距
                  backgroundColor: Colors.lightBlueAccent,
                  // 无圆角
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white), // 文字颜色
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
