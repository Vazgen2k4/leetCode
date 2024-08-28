void main(List<String> args) {
  print(Solution().singleNumber([2,2,1,1]));
}


class Solution {
  // Моё
  int singleNumber(List<int> nums) {
    Map<int, int> myMap = {};
    
    for (var i = 0; i < nums.length; i++) {
      if(myMap.containsKey(nums[i])) {
        myMap[nums[i]] = myMap[nums[i]] !+ 1;  
      } else {
        myMap[nums[i]] = 1;  
      }
    }
    
    myMap.removeWhere((key, value) => value != 1);
    
    if (myMap.isEmpty) {
      return 0;
    }
    
    return myMap.keys.first;
  }
  
  // Не моё
  int singleNumber2(List<int> n) {
    int a = 0;
    for (int i = 0; i < n.length; i++) {
      a ^= n[i];
    }
    return a;
  }

}