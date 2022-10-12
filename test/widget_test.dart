// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

// answer[i] == "Fizz" if i is divisible by 3.
// answer[i] == "Buzz" if i is divisible by 5.
// answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
// answer[i] == i (as a string) if none of the above conditions are true.

void main() {
  test("index 3 returns Fizz", () {
    expect(fizzBuzz(3), "Fizz");
  });
  test("index 6 returns Fizz", () {
    expect(fizzBuzz(6), "Fizz");
  });
  test("index 5 returns Buzz", () {
    expect(fizzBuzz(5), "Buzz");
  });
  test("index 10 returns Buzz", () {
    expect(fizzBuzz(10), "Buzz");
  });
  test("index 20 returns Buzz", () {
    expect(fizzBuzz(20), "Buzz");
  });
  test("index 15 returns FizzBuzz", () {
    expect(fizzBuzz(15), "FizzBuzz");
  });
  test("index 45 returns FizzBuzz", () {
    expect(fizzBuzz(45), "FizzBuzz");
  });
  test("index 1 returns 1", () {
    expect(fizzBuzz(1), "1");
  });
  test("index 2 returns 2", () {
    expect(fizzBuzz(2), "2");
  });
}

String fizzBuzz(int index) {
  final divisibleByThree = index % 3 == 0;
  final divisibleByFive = index % 5 == 0;

  if (divisibleByThree && divisibleByFive) {
    return "FizzBuzz";
  }
  if (divisibleByFive) {
    return "Buzz";
  }
  if (divisibleByThree) {
    return "Fizz";
  }
  return "$index";
}

// Took 8 minutes to get here
