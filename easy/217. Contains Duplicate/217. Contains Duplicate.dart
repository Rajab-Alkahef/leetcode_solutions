class Solution {
  bool containsDuplicate(List<int> nums) {
    //First way
    // Set<int> uniqueNums = nums.toSet();

    // if (nums.length == uniqueNums.length) {
    //   return false;
    // }
    // return true;

    //Second way (Fastest)
    final seen = <int>{};
    for (final number in nums) {
      if (!seen.add(number)) return true;
    }
    return false;
  }
}

void main() {
  Solution sol = Solution();

  List<int> nums = [1, 2, 3, 4];

  bool result = sol.containsDuplicate(nums);

  print(result);
  return;
}
