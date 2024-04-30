import 'package:validations/validators/comparison.dart';

import '../../test_validator.dart';

void main() {
  TestValidator(DurationMinValidator(days: 2))
    ..isValid({
      null,
      const Duration(days: 3),
    })
    ..isInvalid({
      const Duration(days: 0),
      const Duration(days: 1),
      const Duration(days: 2),
    });

  TestValidator(DurationMinValidator(days: 2, inclusive: true))
    ..isValid({
      null,
      const Duration(days: 2),
      const Duration(days: 3),
    })
    ..isInvalid({
      const Duration(days: 0),
      const Duration(days: 1),
    });
}
