// 1. Declare a variable with  the name "name" and assign it the value

void main() {
  print("hi");
  var nums = [2, 5, 5, 11];
  int target = 10;
  solution(nums, target);
  print(solution(nums, target));
}

List<int> solution(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) return [i, j];
    }
  }
  return [0];
}
