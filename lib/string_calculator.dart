import 'package:tdd_calculator_sample_flutter/exceptions/negative_number_exception.dart';
import 'package:tdd_calculator_sample_flutter/utils/number_list.dart';

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(RegExp('[,\n;//]'));
    final numberList = NumberList.readNegatives(parts);
    if (numberList.numbers.isNotEmpty) {
      throw NegativeNumberException(numberList.numbers);
    }

    return parts
        .where((v) => v.isNotEmpty)
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}
