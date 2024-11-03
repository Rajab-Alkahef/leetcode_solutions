int main() {
  List<int> prices = [8, 2, 9, 5, 4, 1];
  Solution solution = Solution();
  print(solution.maxProfit(prices));

  return 0;
}

class Solution {
  int maxProfit(List<int> prices) {
    int n = prices.length;
    int max = 0;
    int min = 0;
    for (int i = 0; i < n; i++) {
      if (prices[i] < prices[min]) {
        min = i;
      } else if (prices[i] - prices[min] > max) {
        max = prices[i] - prices[min];
      } else {
        continue;
      }
    }
    return max;
  }
}
