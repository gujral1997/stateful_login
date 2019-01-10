class ValidationMixin {
  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password should be less than 4 characters';
    }
    return null;
  }

  String validateEmail(String value) {
    // return if valid otherwise string showing error message
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
