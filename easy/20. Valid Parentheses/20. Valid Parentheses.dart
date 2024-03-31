int main() {
  String str = "{[]}";
  print(isValid(str));
  return 0;
}

// bool isValid(String s) {
//   bool result = true;
//   for (int i = 0; i < s.length; i += 2) {
//     if (s[i] == '(' && s[i + 1] != ')' ||
//         s[i] == '{' && s[i + 1] != '}' ||
//         s[i] == '[' && s[i + 1] != ']') result = false;
//   }

//   return result;
// }
bool isValid(String s) {
  List<String> st = []; // create an empty stack to store opening brackets
  for (String c in s.split('')) {
    // loop through each character in the string
    if (c == '(' || c == '{' || c == '[') {
      // if the character is an opening bracket
      st.add(c); // push it onto the stack
    } else {
      // if the character is a closing bracket
      if (st.isEmpty || // if the stack is empty or
          (c == ')' &&
              st.last !=
                  '(') || // the closing bracket doesn't match the corresponding opening bracket at the top of the stack
          (c == '}' && st.last != '{') ||
          (c == ']' && st.last != '[')) {
        return false; // the string is not valid, so return false
      }
      st.removeLast(); // otherwise, pop the opening bracket from the stack
    }
  }
  return st
      .isEmpty; // if the stack is empty, all opening brackets have been matched with their corresponding closing brackets,
  // so the string is valid, otherwise, there are unmatched opening brackets, so return false
}
