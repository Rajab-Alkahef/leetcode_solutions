void main() {
  int target = 2;
  var nums = [1, 3, 2, 3, 3];
 countSubarrays(nums, target);
}

int countSubarrays(List<int> nums, int k) {
  int y = nums[0];
  int ans = 0, start = 0;

  y = nums.reduce((curr, next) => curr > next ? curr : next);

  // print(y);
  //
  for (int i = 0; i < nums.length; i++) {
    
    if (nums[i] == y) {

      k--;
      print("the first if: "+"$i"+" "+"$k");
    }
    while (k == 0) {
      print("the second if: $i  $k" );
      if (nums[start] == y) {
        k++;
      }
      start++;
      print("start  $start");
    }
    ans += start;
    print(ans);
  }

  return ans;
}
