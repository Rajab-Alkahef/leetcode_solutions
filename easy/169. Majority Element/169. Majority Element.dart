int main() {
  Solution solution = Solution();

  List<int> nums = [1];
  print(solution.majorityElement(nums));
  return 0;
}

class Solution {
  int majorityElement(List<int> nums) {
    int result = 0;
    int count = 1;
    nums.sort();
    print(nums);
    if (nums.isEmpty) {
      return 0;
    } else if (nums.length == 1) {
      return nums[0];
    } else {
      for (int i = 1; i < nums.length; i++) {
        if (nums[i] == nums[i - 1]) {
          count++;
          if (count > nums.length / 2) {
            return nums[i];
          }
        } else {
          count = 1;
        }
      }
    }
    return result;
  }
}
