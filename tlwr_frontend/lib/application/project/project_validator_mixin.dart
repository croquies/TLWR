mixin ProjectValidatorMixin {
  String? projectNameValidator(String? value) {
    value = value?.trim();

    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
  }
}
