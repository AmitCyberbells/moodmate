class Validators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) return "Email required";
    if (!value.contains("@")) return "Invalid email";
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.length < 6) return "Min 6 characters required";
    return null;
  }
}
