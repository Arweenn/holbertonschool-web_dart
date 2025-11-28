class Password {
  String password = "";

  // Check if the password is valid based on certain criteria
  bool isValid() {
    if (!(password.length >= 8 && password.length <= 16)) return false;
    if (!(password.contains(RegExp(r'[A-Z]')))) return false;
    if (!(password.contains(RegExp(r'[a-z]')))) return false;
    if (!(password.contains(RegExp(r'\d')))) return false;
    return true;
  }

  // Override toString method to provide a string representation of the Password object
  @override
  String toString() {
    return 'Your Password is: $password';
  }
}