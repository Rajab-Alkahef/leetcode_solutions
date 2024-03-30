int main() {
  int n = 2051;
  print(intToRoman(n));
  return 0;
}

// String intToRoman(int n) {
//   Map<String, String> int = {
//   1 :'I',
//   5:'V',
//   10 :'X',
//   50:'L',
//   100:'C',
//   500:'D',
//   1000:'M'
//   };
//   String sum = "";
//   for (int i = 0; i < s.length; i++) {
//     if (i + 1 < s.length && roman[s[i]]! < roman[s[i + 1]]!) {
//       sum -= roman[s[i]]!;
//     } else {
//       sum += roman[s[i]]!;
//     }
//   }
//   return sum;
// }

String intToRoman(int n) {
  List<String> M = ["", "M", "MM", "MMM"];
  List<String> C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
  List<String> X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
  List<String> I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];
  // int m = n ~/ 1000;
  return M[n ~/ 1000] + C[(n % 1000) ~/ 100] + X[(n % 100) ~/ 10] + I[n % 10];
}
