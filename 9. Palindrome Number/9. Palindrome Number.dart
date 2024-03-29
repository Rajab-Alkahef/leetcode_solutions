void main() {
  var nums = [2, 5, 5, 11];
  int target = -11211;

  print(isPalindrome(target));
}

// bool isPalindrome(int x) {
//   if (x < 0) return false;
//   String strX = x.toString();
//   for (var i = 0; i < strX.length / 2; i++) {
//     if (strX[i] != strX[strX.length - 1 - i]) {
//       return false;
//     }
//   }
//   return true;
// }
bool isPalindrome(int x) {
  bool res = false;
  if (x >= 0) {
    int newX = int.parse(x.toString().split('').reversed.join());
    return newX == x ? true : false;
  } else {
    return false;
  }
}
