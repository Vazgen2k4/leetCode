void main(List<String> args) {
  print(Solution().hammingWeight(5));
}

class Solution {
  int hammingWeight(int num) {
    int count = 0;
    while (num != 0) {
      count += num & 1;
      num >>= 1;
    }
    return count;
  }
}
