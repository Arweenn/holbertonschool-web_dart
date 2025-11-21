/// Returns the longest non-repeating substring of `str` that contains all unique characters.
String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';

  final Map<String, int> lastIndex = {};
  int start = 0;
  int maxLen = 0;
  int maxStart = 0;

  // Iterate through the string
  for (int i = 0; i < str.length; i++) {
	final String ch = str[i];
	if (lastIndex.containsKey(ch) && lastIndex[ch]! >= start) {
	  start = lastIndex[ch]! + 1;
	}

  // Update the last seen index of the character
	lastIndex[ch] = i;
	final int len = i - start + 1;
	if (len > maxLen) {
	  maxLen = len;
	  maxStart = start;
	}
  }

  // Return the longest unique substring found
  return str.substring(maxStart, maxStart + maxLen);
}
