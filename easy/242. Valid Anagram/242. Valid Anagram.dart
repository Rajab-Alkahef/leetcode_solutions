class SolutionSorting {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    final sSorted = s.split('')..sort();
    final tSorted = t.split('')..sort();

    if (sSorted.join('') == tSorted.join('')) {
      return true;
    }

    return false;
  }
}

class SolutionFrequency {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    final Map<String, int> frequency = {};
    for (final char in s.split('')) {
      frequency[char] = (frequency[char] ?? 0) + 1;
    }
    for (final char in t.split('')) {
      if (!frequency.containsKey(char)) {
        return false;
      }

      frequency[char] = (frequency[char] ?? 0) - 1;

      if (frequency[char] == 0) {
        frequency.remove(char);
      }
    }

    return frequency.isEmpty;
  }
}

void main() {
  SolutionFrequency sol = SolutionFrequency();

  bool result = sol.isAnagram("ba", "ab");

  print(result);
  return;
}
