import 'package:flutter_test/flutter_test.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  group('test add', () {
    test('returns 0 for empty string', () {
      expect(calculator.add(''), equals(0));
    });
  });
}
