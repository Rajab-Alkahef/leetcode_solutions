int main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  // print(removeDuplicates(nums));

  // List<int> expectedNums = [1, 2]; // The expected answer with correct length

  Solution sol = Solution();
  sol.removeDuplicates(nums);
  print(sol.expectedNums);
  return 0;
}

// List<int> expectedNums(List<int> nums, List<int> expectedNums) {
//   int k = removeDuplicates(nums).length; // Calls your implementation
//   nums = removeDuplicates(nums);
//   print(nums);
//   if (k == expectedNums.length) {
//     for (int i = 0; i < k; i++) {
//       if (nums[i] == expectedNums[i]) {
//         // output.add(nums[i]);
//       }
//     }
//   }
//   print(nums);
//   return nums;
// }

// List<int> removeDuplicates(List<int> nums) {
//   int k = 0;
//   int l = 0;
//   List<int> expectednum = [];
//   if (nums.length == 0 || nums.length == 1) {
//     return nums;
//   } else {
//     for (int i = 0; i < nums.length; i++) {
//       if (expectednum.contains(nums[i])) {
//         l++;
//         // nums.removeAt(nums[i]);
//       } else {
//         expectednum.add(nums[i]);
//         // l++;
//         k++;
//       }
//     }
//   }
//   // for (int j = 0; j < l; j++) {
//   //   expectednum.add(0);
//   // }
//   nums = expectednum;
//   // print(l);
//   // print(expectednum);
//   // print(nums);
//   return nums;
// }
class Solution {
  List<int> expectedNums = [];
  int k = 1;
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    } else if (nums.length == 1) {
      expectedNums.addAll(nums);
      return 1;
    }
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] != nums[i + 1]) {
        nums[k] = nums[i + 1];
        k++;
      }
    }
    expectedNums = nums;
    return k;
  }
}
