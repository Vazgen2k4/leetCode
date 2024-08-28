void main(List<String> args) {
  print(Solution().longestPalindrome('babad'));
}

class Solution {
  String longestPalindrome(String s) {
    if (s.isEmpty) return "";
    
    var start = 0;
    var end = 0;
    
    for (var i = 0; i < s.length; i++) {
      var len1 = expandAroundCenter(s, i, i);
      var len2 = expandAroundCenter(s, i, i + 1);
      var len = len1 > len2 ? len1 : len2;
      if (len > end - start) {
        start = i - (len - 1) ~/ 2;
        end = i + len ~/ 2;
      }
    }
    return s.substring(start, end + 1);
  }
  
  int expandAroundCenter(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return right - left - 1;
  }
}