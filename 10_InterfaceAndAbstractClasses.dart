import '06_Classes.dart';

/// 任意类都可以作为接口被实现
/// 变量、函数均要重写
class MockSpaceship implements Spacecraft {
  MockSpaceship(this.name, this.launchDate);

  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;
  int? get launchMonth => launchDate?.month;
  int? get launchDay => launchDate?.day;

  void describe() {
    print('This describe come from MockSpaceship');
    print('name = $name');
    print('year = $launchYear');
    print('month = $launchMonth');
    print('day = $launchDay');
  }
}

/// 抽象类
abstract class Descriable {
  void describe();

  void descriveWithEmphasis() {
    print('==========');
    describe();
    print('==========');
  }
}

class comeTrueDescriable implements Descriable {
  void describe() {
    print('This describe function is coming true abstract class');
  }

  void descriveWithEmphasis() {
    print("***************");
    describe();
    print("***************");
  }
}

void main() {
  print('This is implements of class');
  var newClass = MockSpaceship('newClass', DateTime(2023, 4, 2));
  newClass.describe();

  print('\nThis is abstract class come true');
  var newComeTrue = comeTrueDescriable();
  newComeTrue.descriveWithEmphasis();
}
