mixin AuthValidatorMixin {
  String? emailValidator(String? value) {
    value = value?.trim();
    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regExp = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!regExp.hasMatch(value)) {
      return 'Please check your email format';
    }
  }

  String? passwordValidator(String? value) {
    value = value?.trim();
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters in length';
    }
  }

  String? confirmPasswordValidator(String? confirmPassword, String? password) {
    confirmPassword = confirmPassword?.trim();
    password = password?.trim();
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm password is required';
    }
    if (confirmPassword != password) {
      return 'Your password and confirmation password do not match.';
    }
  }
}
