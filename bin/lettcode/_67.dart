void main(List<String> args) {
  print(Solution().addBinary("11", "1"));
}

class Solution {
  final maxLength = 10000;

  String addBinary(String a, String b) {
    if (a.length > maxLength || b.length > maxLength) {
      return '';
    }

    if (a.isEmpty || b.isEmpty) {
      return '';
    }

    pasre(String s) => s.split('');

    List<String> first = pasre(a);
    List<String> second = pasre(b);
    int ost = 0;
    String res = '';

    final firstIsBigger = a.length > b.length;
    int dif = a.length - b.length;

    if (dif < 0) {
      first = ('0' * (-dif)).split('') + first;
    } else if(dif > 0) {
      second = ('0' * (dif)).split('') + second;
    }

    final length = firstIsBigger ? a.length : b.length;
    int value;

    for (var i = length - 1; i >= 0; i--) {
      int firstValue = int.parse(first[i]);
      int secondValue = int.parse(second[i]);
      value = firstValue + secondValue + ost;
      
      ost = value ~/ 2;
      value = value % 2;

      res = value.toString() + res;
    }

    return ost > 0 ? ost.toString() + res : res;
  }
}
