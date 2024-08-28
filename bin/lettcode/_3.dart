void main(List<String> args) {
  
}
/* 
Given a string s, find the length of the longest 
substring without repeating characters. 
*/
class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) {
      return 0;
    }

    if (s.length == 1) {
      return 1;
    }

    Map<String, int> answers = {};
    int result = 0;
    int start = 0;

    for (var i = start; i < s.length; i++) {
      String char = s[i];
      if (answers.containsKey(char) && answers[char]! >= start) {
        start = answers[char]! + 1;
      }
      answers[char] = i;
      result = result > i - start + 1 ? result : i - start + 1;
    }

    return result;
  }
}
