int main() {
  print(romanToInt("MCMXCIV"));
  return 0;
}

int romanToInt(String s) {
  Map<String, int> roman = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    if (i + 1 < s.length && roman[s[i]]! < roman[s[i + 1]]!) {
      sum -= roman[s[i]]!;
    } else {
      sum += roman[s[i]]!;
    }
  }
  return sum;
}
