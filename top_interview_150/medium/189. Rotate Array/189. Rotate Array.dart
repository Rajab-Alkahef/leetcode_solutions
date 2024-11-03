int main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  int k = 3;
  Solution solution = Solution();
  solution.rotate(nums, k);
  return 0;
}

// class Solution {
//   void rotate(List<int> nums, int k) {
//     for (int i = 0; i < k; i++) {
//       int last = nums[nums.length - 1];
//       for (int j = nums.length - 1; j > 0; j--) {
//         nums[j] = nums[j - 1];
//       }
//       nums[0] = last;
//     }
//     // print(temp);
//     // nums = temp;
//     print(nums);
//   }
// }

class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;

    k = k % n;

    // Reverse the entire array
    _reverse(nums, 0, n - 1);
    // Reverse the first k elements
    _reverse(nums, 0, k - 1);
    // Reverse the remaining n-k elements
    _reverse(nums, k, n - 1);

    print(nums);
  }

  void _reverse(List<int> nums, int start, int end) {
    while (start < end) {
      int temp = nums[start];
      nums[start] = nums[end];
      nums[end] = temp;
      start++;
      end--;
    }
  }
}










// class Solution {
//   void rotate(List<int> nums, int k) {
//     List<int> temp = [];
//     temp.addAll(nums);
//     print(temp);
//     for (int i = 0; i < temp.length; i++) {
//       if (i - k - 1 < 0) {
//         temp[i + temp.length - k - 1] = nums[i];
//       } else {
//         temp[i - k - 1] = nums[i];
//         // print(temp);
//         // print(nums);
//       }
//       // if (i + k >= temp.length) {
//       //   temp[i - k - 1] = nums[i];
//       // } else {
//       //   temp[i + k] = nums[i];
//       // }
//     }
//     print(temp);
//     nums = temp;
//     print(nums);
//   }
// }
