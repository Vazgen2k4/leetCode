void main(List<String> args) {
  print(Solution().searchInsert([1, 3], 2));
}

class Solution {
  final maxLength = 10000;

  int searchInsert(List<int> nums, int target) {
    if (nums.isEmpty || nums.length > maxLength) {
      return 0;
    }

    int start = 0;
    int end = nums.length;
    int halfIndex = 0;
    int value = 0;

    while (start < end) {
      halfIndex = (end - start) ~/ 2 + start;
      value = nums[halfIndex];

      if (value < target) {
        start = halfIndex + 1;
      } else if (value > target) {
        end = halfIndex;
      } else {
        return halfIndex;
      }
    }
    
    return start; 
  }
}

