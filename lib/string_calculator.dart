class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(RegExp('[,\n;//]'));
    return parts
        .where((v) => v.isNotEmpty)
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}
