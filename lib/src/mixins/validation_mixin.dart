class ValidationMixin {
  String validateEmail(String value) {
    if (value.length < 4) {
      return 'Password should be less than 4 characters';
    }
    return null;
  }

  String validatePassword(String value) {
    // return if valid otherwise string showing error message
    if(!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }
}