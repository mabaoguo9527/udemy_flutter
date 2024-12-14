import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key, required this.callback});
  final ValueChanged callback;

  @override
  Widget build(BuildContext context) {
    String? newTaskTile;

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
                },
              ),
              TextButton(
                onPressed: () {
                  // 按钮点击事件
                  callback(newTaskTile);
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
