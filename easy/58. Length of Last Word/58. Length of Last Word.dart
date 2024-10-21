int main() {
  String s = " Hello Worlds  ff  ";
  Solution solution = Solution();
  int result = solution.lengthOfLastWord(s);
  print(result);
  return 0;
}

class Solution {
  int lengthOfLastWord(String s) {
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] != " ") {
        count++;
      } else {
        for (int j = i; j < s.length; j++) {
          if (s[j] != " ") {
            count = 0;
          }
        }
      }
    }

    return count;
  }
}
