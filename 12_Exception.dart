import 'dart:io';

Future<void> describeFlyByObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('language/$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe objects: $e');
  } finally {
    flybyObjects.clear();
  }
}

void main() {
  var flybyObjects = ['12_test1', '12_test2', '12_test3'];
  describeFlyByObjects(flybyObjects);
}
