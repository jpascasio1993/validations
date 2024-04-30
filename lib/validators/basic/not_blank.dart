part of validators.basic;

/// Check that a [String] is not `null` nor empty after removing any leading or trailing whitespace.
class NotBlankValidator extends ConstraintValidator {
  @override
  bool allowNull = false;

  @override
  bool isValid(dynamic value, ValueContext context) {
    if (value == null) return false;

    if (value is! String) return true;

    return value.trim().isNotEmpty;
  }

  @override
  Function message = (dynamic validatedValue) => 'Value cannot be blank';
}
