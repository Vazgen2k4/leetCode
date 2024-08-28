void main(List<String> args) {
  print(Solution().longestCommonPrefix(["flower", "flow", "flight"]));
}

/* 
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".


Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
 */

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";
    for (int i = 0; i < strs[0].length; i++) {
      for (int j = 1; j < strs.length; j++) {
        if (i >= strs[j].length || strs[j][i] != strs[0][i]) {
          return strs[0].substring(0, i);
        }
      }
    }

    return strs[0];
  }
}
