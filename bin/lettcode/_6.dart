import 'dart:math';

class Solution {
  String convertFirstVersion(String s, int numRows) {
    if (numRows == 1) {
      return s;
    }

    List<List> l =
        List.generate(numRows, (i) => List.generate(s.length, (_) => ''));

    int x = 0;
    int y = -1;
    int dx = 0;
    int dy = 1;
    int counter = 0;

    while (counter != s.length) {
      if (y + 1 == l.length) {
        dx = 1;
        dy = -1;
      } else if (y == 0) {
        dx = 0;
        dy = 1;
      }

      y += dy;
      x += dx;

      l[y][x] = s[counter];

      counter++;
    }

    String result = '';

    for (var element in l) {
      result += element.join('');
    }

    print(result);
    return result;
  }

  String convert(String s, int numRows) {
    if (numRows == 1) return s;

    var rows = List.generate(min(numRows, s.length), (i) => '');
    var currentRow = 0;
    bool goingDown = false;

    for (var i = 0; i < s.length; i++) {
      String char = s[i];
      rows[currentRow] += char;

      if (currentRow == 0 || currentRow == numRows - 1) {
        goingDown = !goingDown;
      }
      
      currentRow += goingDown ? 1 : -1;
    }

    return rows.join();
  }
}

void main(List<String> args) {
  print(Solution().convert("PAHNAPLSIIGYIR", 3));
}
