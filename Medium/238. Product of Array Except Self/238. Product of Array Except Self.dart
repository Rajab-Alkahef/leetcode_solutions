class Solution {
  List<int> productExceptSelf(List<int> nums) {
    final List<int> output = List.filled(nums.length, 1);

    int prefix = 1;

    // First pass: product of all elements to the left
    for (int i = 0; i < nums.length; i++) {
      output[i] = prefix;
      prefix *= nums[i];
    }

    int suffix = 1;
    // Second pass: multiply by all elements to the right
    for (int i = nums.length - 1; i >= 0; i--) {
      output[i] *= suffix;

      suffix *= nums[i];
    }

    return output;
  }
}

void main() {
  final solution = Solution();
  final List<int> nums = [1, 2, 3, 4];
  final result = solution.productExceptSelf(nums);
  print(result);
  return;
}
