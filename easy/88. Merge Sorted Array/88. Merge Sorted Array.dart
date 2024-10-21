int main() {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  List<int> nums2 = [2, 5, 6];
  int m = 3;
  int n = 3;
  // List<int> nums1 = [2];
  // List<int> nums2 = [];
  // int m = 1;
  // int n = 0;
  Solution solution = Solution();
  solution.merge(nums1, m, nums2, n);
  return 0;
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    for (int i = 0; i < n; i++) {
      nums1[m + i] = nums2[i];
    }
    nums1.sort();
    // print(nums1);
  }
}

class Solutions {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    // List<int> test =
    // for (int i = 0; i < m + n;i++){

    // }
    // for (int i = 0; i < m; i++) {
    //   nums1[m + n - 1 - i] = nums1[i];
    //   print(nums1);
    // }
    if (n == 0) {
      nums1 = nums1;
    } else {
      nums1[m + n - 1] = 0;
      for (int i = 0; i < n; i++) {
        nums1[m + i] = nums2[i];
      }
      nums1.sort();
    }
    // print(nums1);

    print(nums1);
  }
}
