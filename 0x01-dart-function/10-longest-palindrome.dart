import '9-palindrome.dart';

// Returns a list of all palindromic substrings found in the given list of characters tab.
List findPalindromes(List<String> str) {
  var res = '';
  var palindromes = [];

  // Iterate through the list to find palindromic substrings
  for (int i = 0; i < str.length; i++) {
    for (int j = i; j < str.length; j++) {
      res += str[j];

      // Check if the current substring is a palindrome
      if (isPalindrome(res)) {
        palindromes.add(res);
        i += res.length;
        res = '';
        break;
      }
    }
    res = '';
  }
  return palindromes;
}

// Returns the longest palindromic substring found in a given string s.
String longestPalindrome(String s) {
  var tmp = s.split('');
  var longest = '';
  var palindromes = [];

  // If the entire string is a palindrome, return it immediately
  if (isPalindrome(s)) { return s; }
    palindromes = findPalindromes(tmp);
    palindromes.forEach((char) {
    longest = char.length > longest.length ? char: longest;
  });

  // Return the longest palindrome found, or 'none' if none exist
  return longest != '' ? longest: 'none';
}
