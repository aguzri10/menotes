class Utils {
  // For format valid email
  static bool emailValidation(String text) {
    return !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text);
  }
}
