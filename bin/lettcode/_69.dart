void main(List<String> args) {
  print(Solution().mySqrt(121));
}

class Solution {
  int mySqrt(int x) {
    if (x == 0 || x == 1) {
      return x;
    }

    int start = 1;
    int end = x;
    int result = 0;

    while (start <= end) {
      int mid = start + (end - start) ~/ 2;
      int midSquared = mid * mid;

      if (midSquared == x) {
        return mid;
      }
     
      if (midSquared < x) {
        start = mid + 1;
        result = mid;
      } else {
        end = mid - 1;
      }
    }

    return result;
  }
}
