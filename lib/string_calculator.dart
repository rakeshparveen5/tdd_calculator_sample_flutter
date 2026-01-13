class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(RegExp('[,\n;//]'));
    final negativeNumbers = parts.where(
      (v) => (int.tryParse(v) ?? 0).isNegative,
    );
    if (negativeNumbers.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negativeNumbers.join(',')}',
      );
    }

    return parts
        .where((v) => v.isNotEmpty)
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}
