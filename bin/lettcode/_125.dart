void main(List<String> args) {
  print(Solution().isPalindrome("race a car"));
}

class Solution {
  bool isPalindrome(String s) {
    final first = s.split(RegExp(r'[_\s\W]+')).join().toLowerCase();
    final second = first.split('').reversed.join();
    return first == second;
  }
}