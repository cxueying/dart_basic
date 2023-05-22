import '06_Classes.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, DateTime super.launchDate);
  
}

void main() {
  var newPilotedCraft = PilotedCraft("newTest", DateTime(2023, 4, 2));
  newPilotedCraft.describe();
  newPilotedCraft.describeCrew();
}
