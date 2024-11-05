int main() {
  Solution solution = Solution();
  List<int> nums = [3, 2, 1, 0, 4];
  print(solution.canJump(nums));
  return 0;
}

class Solution {
  bool canJump(List<int> nums) {
    int pointer = 0;
    for (var n in nums) {
      if (pointer < 0)
        return false;
      else if (pointer < n) pointer = n;
      pointer -= 1;
    }
    return true;
  }
}
