int main() {
  List<int> nums = [1, 3, 5, 7];
  int target = 6;
  int result;
  Solution solution = Solution();
  result = solution.searchInsert(nums, target);
  print(result);
  return 0;
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target)
        return i;
      else if (nums[i] > target)
        return i;
      else if (i == nums.length - 1) {
        if (nums[i] < target) return i + 1;
      }
    }
    return 0;
  }
}
