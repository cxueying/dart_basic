import 'dart:math';
//import 'package:test.dart';
import '05_ImportsFiles.dart';

void main() {
  print('Import dart:math test');
  print('e = $e');
  print('pi = $pi');

  var result1 = pow(7, 5);
  print('7^5 = $result1');

  var result2 = sqrt(78);
  print('sqrt(78) = $result2');

  print('\nImport 05_ImportsFiles.dart test');
  testFunction();
}
