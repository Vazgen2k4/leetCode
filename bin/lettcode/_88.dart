void main(List<String> args) {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  int m = 3;
  List<int> nums2 = [2, 5, 6];
  int n = 3;

  Solution().merge(nums1, m, nums2, n);

  print(nums1);
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> result = (nums1.sublist(0, m) + nums2)..sort();
    
    for (var i = 0; i < m + n; i++) {
      nums1[i] = result[i];
    }
    
  }
}
