import 'dart:io';
import '06_Classes.dart';

const OneSecond = Duration(seconds: 1);

/// 调用这个函数后会延迟 OneSecond 执行
Future<void> printWithDelay(String message) async {
  var time = DateTime.now();

  await Future.delayed(OneSecond);

  var nowTime = DateTime.now();
  print('\nThis time is on Async function');
  print(message);
  print('start time: $time');
  print('end time: $nowTime');
  var difference = nowTime.difference(time);
  print('difference time: $difference');
}

/// ***看不懂，不知道这 Iterable<String> object 是个啥东西***
/// Iteralbe<String> 指元素类型为String的可迭代对象
/// 可迭代对象表示一组按顺序排列的数据，可以使用迭代器访问其中的每个元素
/// 使用： Iterable<String> object = ['String1', 'String2', 'String3']
///
Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object:$e');
    }
  }
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  craft.describe();
  for (final object in objects) {
    await Future.delayed(OneSecond);
    yield '${craft.name} files by $object';
    print('$objects.txt');
  }
}

void main() {
  /// 异步简单测试
  print('This time is on main');
  var time = new DateTime.now();
  print('start time: $time');
  printWithDelay('this is a test txt');
  var nowTime = new DateTime.now();
  print('end time: $nowTime');
  var difference = nowTime.difference(time);
  print('differnce time : $difference');

  Iterable<String> iterable = ['12_test1', '12_test2', '12_test3'];
  createDescriptions(iterable);

  Spacecraft newSpace = new Spacecraft('newSpace', DateTime(2023, 4, 3));
  report(newSpace, iterable);
}
