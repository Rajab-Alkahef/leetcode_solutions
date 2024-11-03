int main() {
  List<int> nums = [3, 3];
  int val = 5;
  // print(removeDuplicates(nums));

  // List<int> expectedNums = [1, 2]; // The expected answer with correct length

  Solution sol = Solution();
  sol.removeElement(nums, val);
  print(sol.expectedNums);

  return 0;
}

class Solution {
  List<int> expectedNums = [];
  int k = 0;
  int temp = 0;
  int removeElement(List<int> nums, int val) {
    // List<int> numsCopy = List<int>.from(nums);
    // expectedNums = numsCopy;
    // if (nums.isEmpty) {
    //   return 0;
    // } else if (nums.length == 1) {
    //   if (expectedNums.first != val) {
    //     // expectedNums.addAll(nums);
    //     return 1;
    //   } else {
    //     expectedNums = [];
    //     return 0;
    //   }
    // }
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        // temp = nums[i];
        // nums[i] = nums[i + 1];
        // nums[i + 1] = temp;
        nums[k] = nums[i];
        print(nums);

        k++;
      }
    }
    expectedNums = nums;
    print(k);
    return k;
  }
}
