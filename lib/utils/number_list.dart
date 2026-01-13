class NumberList {
  final List<int> numbers;

  NumberList._(this.numbers);

  factory NumberList.readNegatives(List<String> numberList) {
    final negativeNumbers = numberList
        .map((v) => (int.tryParse(v) ?? 0))
        .where((v) => v.isNegative)
        .toList();
    return NumberList._(negativeNumbers);
  }
}
