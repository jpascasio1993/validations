part of validator;

class FieldValidator<T> {
  final String name;
  final List<ConstraintValidator> validators;
  final bool validateClass;
  const FieldValidator({
    required this.name,
    this.validators = const [],
    this.validateClass = false,
  });
  bool checkType(Object value) {
    return value is T;
  }
}
