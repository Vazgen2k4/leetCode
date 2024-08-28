void main(List<String> args) {
  print(Solution().generate(5));
}



class Solution {
  List<List<int>> generate(int numRows) {
    if (numRows < 1 || numRows > 30) {
      return [];
    }
    
    final result = <List<int>>[];
    
    for (var i = 0; i < numRows; i++) {
      if (i == 0) {
        result.add([1]);
        continue;
      }
      
      if (i == 1) {
        result.add([1, 1]);
        continue;
      }
      final item = <int>[];
      final sublist = result[i - 1];
      for (var j = 0; j < sublist.length + 1; j++) {
        if(j == 0 || j == sublist.length) {
          item.add(1);
          continue;
        }
        item.add(sublist[j] + sublist[j - 1]);
      }
      result.add(item);
      
    }
    
    return result;
  }
  
  
  List<int> getRow(int rowIndex) {
    return generate(rowIndex + 1)[rowIndex];
  }
}