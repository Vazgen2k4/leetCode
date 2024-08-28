class Solution {
  int divide(int dividend, int divisor) {
    if (divisor == 0) {
      throw ArgumentError('Divisor cannot be zero');
    }

    if (dividend == 0) {
      return 0;
    }

    if (dividend == -2147483648 && divisor == -1) {
      return 2147483647;
    }

    bool isNegative = (dividend < 0) ^ (divisor < 0);

    int a = dividend.abs();
    int b = divisor.abs();

    int result = 0;

    while (a - b >= 0) {
      int x = 0;
      while (a - (b << 1 << x) >= 0) {
        x++;
      }
      result += 1 << x;
      a -= b << x;
    }

    return isNegative ? -result : result;
  }
}
