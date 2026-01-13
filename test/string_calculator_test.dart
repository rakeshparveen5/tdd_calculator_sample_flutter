import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_calculator_sample_flutter/string_calculator.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  group('test add', () {
    test('returns 0 for empty string', () {
      expect(calculator.add(''), equals(0));
    });

    test('returns number for single number', () {
      expect(calculator.add('1'), equals(1));
    });

    test('returns sum of 2 comma separated numbers', () {
      expect(calculator.add('1,5'), equals(6));
    });

    test('returns sum of multiple numbers', () {
      expect(calculator.add('1,3,5,7,8'), equals(24));
    });

    test('handles new lines in numbers', () {
      expect(calculator.add('1\n2,3'), equals(6));
    });

    test('handles other delimiters in numbers', () {
      expect(calculator.add('//;\n1;2'), equals(3));
    });

    test('throws exception for negative number', () {
      expect(() => calculator.add('1,2,3,-4,5'), throwsException);
    });
  });
}
