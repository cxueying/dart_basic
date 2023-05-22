import '06_Classes.dart';

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);

  void printAltitude() {
    print('altitude = $altitude');
  }

  void describe() {
    print('This describe come from class Orbiter, not from class Spacecraft');
    print('Spacecraft: $name');
    //Type promotion donen't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var test = Orbiter('test', DateTime(2023, 4, 2), 99.67);
  test.describe();
  test.printAltitude();
}
