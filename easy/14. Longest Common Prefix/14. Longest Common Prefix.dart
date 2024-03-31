int main() {
  List<String> strs = ["dog", "racecar", "car"];
  String result = longestCommonPrefix(strs);
  print(result);
  return 0;
}

String longestCommonPrefix(List<String> strs) {
  for (int i = 0; i < strs[0].length; i++) {
    for (int j = 1; j < strs.length; j++) {
      if (i == strs[j].length || strs[0][i] != strs[j][i]) {
        return strs[0].substring(0, i);
      }
    }
  }
  return strs[0];

  // return "";
}
