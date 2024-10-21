int main() {
  List<int> nums = [1, 1, 1, 1];
  int result = 0;
  Solution solution = Solution();
  result = solution.removeDuplicates(nums);
  print(result);
  return 0;
}

class Solution {
  int removeDuplicates(List<int> nums) {
    // List<int> expectedNums = [];
    int j = 1;
    int count = 1;
    int k = 1;
    if (nums.isEmpty) {
      return 0;
    } else if (nums.length == 1) {
      // expectedNums.addAll(nums);
      return 1;
    } else {
      // expectedNums.add(nums[0]);
      // print("expectedNums: $expectedNums");
      for (int i = 1; i < nums.length; i++) {
        if (nums[i] == nums[i - 1] && count < 2) {
          count++;
          // if (count > 2) {
          //   count = 1;
          //   continue;
          // }
          // else {
          nums[j] = nums[i];
          // expectedNums.add(nums[i]);
          j++;
          k++;

          // print("object");
          // }
        } else {
          if (nums[i] != nums[i - 1]) {
            count = 1;
            nums[j] = nums[i];
            // expectedNums.add(nums[i]);
            j++;
            k++;
          }
        }
      }

      print(nums);
      print(k);
      // print(expectedNums);
      return k;
    }
  }
}
