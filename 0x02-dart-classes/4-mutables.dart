class Password {
  String _password = "";

  // Constructor to initialize the private password field
  Password({required String password}) {
    _password = password;
  }

  // Check if the password is valid based on certain criteria
  bool isValid() {
    if (!(_password.length >= 8 && _password.length <= 16)) return false;
    if (!(_password.contains(RegExp(r'[A-Z]')))) return false;
    if (!(_password.contains(RegExp(r'[a-z]')))) return false;
    if (!(_password.contains(RegExp(r'\d')))) return false;
    return true;
  }
  
  // Override toString method to provide a string representation of the Password object
  @override
  String toString() {
    return 'Your Password is: $_password';
  }

  // Getter and Setter for password
  String get password => _password;
  set password(String newPassword) {
    _password = newPassword;
  }
}