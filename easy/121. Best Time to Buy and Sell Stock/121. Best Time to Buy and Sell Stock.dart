// class Solution {
//   int maxProfit(List<int> prices) {
//     final sortedPrices = [...prices]..sort();
//     int sellPrice = 0;
//     int buyPrice = 0;

//     print(prices);
//     print(sortedPrices);

//     for (int i = 0; i < prices.length; i++) {
//       print("i $i");
//       buyPrice = sortedPrices[i];
//       print("buyPrice $buyPrice");

//       final List<int> ignoredMaxPrices = [];
//       for (final x in prices) {
//         if (x == buyPrice) {
//           break;
//         } else {
//           ignoredMaxPrices.add(x);
//         }
//       }
//       print("ignoredPrices $ignoredMaxPrices");
//       for (int i = sortedPrices.length - 1; i >= 0; i--) {
//         if (ignoredMaxPrices.contains(sortedPrices[i]) ||
//             sortedPrices[i] == buyPrice) {
//           print("test");
//           continue;
//         } else {
//           print("test ${sortedPrices[i]}");
//           sellPrice = sortedPrices[i];
//           break;
//         }
//       }
//       if (sellPrice > buyPrice) {
//         print("sellPrice > buyPrice");
//         break;
//       }
//       print(" sellPrice $sellPrice");
//       print(" buyPrice $buyPrice");
//       print(" ========================");
//     }
//     print("sellPrice ===== $sellPrice");
//     print("buyPrice ===== $buyPrice");
//     int profit = sellPrice - buyPrice;
//     return profit > 0 ? profit : 0;
//   }
// }

// void main() {
//   Solution solution = Solution();

//   final List<int> prices = [2, 1, 2, 0, 1];

//   final int result = solution.maxProfit(prices);

//   print(result);

//   return;
// }

class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      } else {
        final profit = prices[i] - minPrice;

        if (profit > maxProfit) {
          maxProfit = profit;
        }
      }
    }

    return maxProfit;
  }
}

void main() {
  final solution = Solution();

  final List<int> prices = [2, 4, 1];

  print(solution.maxProfit(prices));
}
