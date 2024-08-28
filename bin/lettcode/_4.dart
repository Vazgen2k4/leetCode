class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    final allNums = (nums1 + nums2)..sort();
    
    int middle =allNums.length ~/ 2;
    if(allNums.length % 2 == 0) {
      return (allNums[middle] + allNums[middle - 1]) / 2;
    } 
    
    return allNums[middle] / 1;
  }
}
