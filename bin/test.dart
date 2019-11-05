import 'main.dart';
import 'package:test/test.dart';

void main() {

  test("Test Case 2",(){

    expect(gameOfLife([[false, false, false, false, false, false],
      [false, true, true, false, true, false],
       [false, true, true, false, false, true],
    [false, false, false, false, false, false],
    [true, true, false, false, true, true],
    [false, false, false, true, true, false]]),

      [[false, false, false, false, false, false],
      [false, true, true, true, false, false],
      [false, true, true, true, false, false],
      [true, false, true, false, true, true],
      [false, false, false, true, true, true],
      [false, false, false, true, true, true]]);
  });




}