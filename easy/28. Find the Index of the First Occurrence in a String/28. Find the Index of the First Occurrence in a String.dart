int main() {
  String haystack = "aaa";
  String needle = "aaaa";
  print(strStr(haystack, needle));
  return 0;
}

int strStr(String haystack, String needle) {
  int x = -1;
  String compare = '';
  // String q = '';

  if (needle.isNotEmpty) {
    compare = needle[0];
  }
  if (haystack.length >= needle.length && haystack.contains(needle)) {
    for (var i = 0; i < haystack.length; i++) {
      if (haystack[i] == compare) {
        int k = 0;
        int z = i;
        for (int j = 0; j < needle.length; j++) {
          if (haystack[z] == needle[j]) {
            z++;
            k++;
          } else {
            break;
          }
          if (k == needle.length) {
            x = i;
            break;
          }
          // break;
        }
        if (k == needle.length) {
          x = i;
          break;
        }
      }
    }
  }
  return x;
}
