void main(List<String> args) {
  print(Solution().strStr("flower", "owert"));
}

class Solution {
  int strStr(String haystack, String needle) => haystack.indexOf(needle); 
}
