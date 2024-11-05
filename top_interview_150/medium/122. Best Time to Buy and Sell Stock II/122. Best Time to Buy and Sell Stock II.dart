int main() {
  List<int> prices = [7, 6, 4, 3, 1];
  Solution solution = Solution();
  print(solution.maxProfit(prices));

  return 0;
}

class Solution {
  int maxProfit(List<int> prices) {
    int n = prices.length;
    int max = 0;
    int min = 0;
    int maxprofit = 0;
    for (int i = 0; i < n; i++) {
      if (prices[i] < prices[min]) {
        min = i;
      } else if (prices[i] > prices[min]) {
        max = prices[i] - prices[min];
        maxprofit = maxprofit + max;
        min = i;
      } else {
        continue;
      }
    }
    return maxprofit;
  }
}
