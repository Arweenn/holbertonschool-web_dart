/// Check if a given string is a palindrome
bool isPalindrome(String s) {
  if (s.length < 3) return false;

  // Normalize the string: convert to lowercase and remove non-alphabetic characters
  String cleanString = s.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');

  // Check if the cleaned string is the same forwards and backwards
  return cleanString == cleanString.split('').reversed.join('');
}
