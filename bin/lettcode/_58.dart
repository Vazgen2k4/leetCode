void main(List<String> args) {}

class Solution {
  int lengthOfLastWord(String s) => (s.trim()).split(RegExp(r'\W')).last.length;
}
