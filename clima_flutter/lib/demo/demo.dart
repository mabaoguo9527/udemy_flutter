import 'dart:async';
import 'dart:io';

void main() {
  performTask();
}

void performTask() async {
  task1();
  var task2Data = await task2();
  task3(task2Data);
}

void task1() {
  String result = 'task 1';
  print('Task 1 complete');
}

Future<String?> task2() async {
  Duration duration = Duration(seconds: 3);
  String? result;
  await Future.delayed(duration, () {
    print('Task 2 complete');
    result = 'task 2';
  });
  return result;
}

void task3(String? task2Data) {
  String result = 'task 3';
  print('Task 3 complete with $task2Data');
}
