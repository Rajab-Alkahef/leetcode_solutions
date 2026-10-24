class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // for (int i = 0; i < nums.length; i++) {
    //   for (int j = i + 1; j < nums.length; j++) {
    //     if (nums[i] + nums[j] == target) return [i, j];
    //   }
    // }

    // return [0];

    final map = <int, int>{};

    for (int x = 0; x <= nums.length - 1; x++) {
      int remains = target - nums[x]; //Calculate what number we need

      if (map.containsKey(remains)) {
        return [x, map[remains]!];
      }
      map[nums[x]] = x;
    }

    return [];
  }
}

void main() {
  Solution sol = Solution();

  List<int> nums = [3, 2, 4];

  List<int> result = sol.twoSum(nums, 6);

  print(result);
  return;
}
